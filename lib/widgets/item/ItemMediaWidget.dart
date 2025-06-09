import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/utils/FileManager.dart';
import 'package:haohsing_flutter/utils/PermissionHelper.dart';
import 'package:haohsing_flutter/utils/ToastHelper.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:video_player/video_player.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'ItemTextWidget.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

class ItemMediaWidget extends HookWidget {
  final String fieldName;
  final ValueNotifier<List<File>>? selectedMedias;
  final List<String> mediaUrlList;
  final String hintText;
  final Color fontColor;
  final double sizeLimit;
  final int fileLimit;
  final FileType fileType;
  final double padding;
  final bool isClickable;
  final bool isDelete;

  const ItemMediaWidget({
    super.key,
    required this.fieldName,
    this.selectedMedias,
    this.mediaUrlList = const [],
    this.hintText = AppTexts.choosePhoto,
    this.fontColor = AppColors.grey,
    this.sizeLimit = 100,
    this.fileLimit = 6,
    this.fileType = FileType.media,
    this.padding = 0,
    this.isClickable = true,
    this.isDelete = true,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final double thumbWidth = (screenWidth - padding - 16.sp - 6.sp) / 3;
    final double thumbHeight = thumbWidth * 0.7;

    return Column(
      children: [
        ItemTextWidget(
          fieldName: fieldName,
          value: (selectedMedias != null && selectedMedias!.value.isNotEmpty)
              ? "${selectedMedias!.value.length}個項目"
              : hintText,

          onTap: (isClickable && selectedMedias != null)
              ? () async {
            bool hasPermission = await checkStoragePermission(context);

            if (hasPermission) {
              if (fileLimit - selectedMedias!.value.length > 0) {
                List<File> newSelectedFiles = await pickMedia(
                  context: context,
                  sizeLimitMB: sizeLimit,
                  fileLimit: fileLimit - selectedMedias!.value.length,
                  fileType: fileType,
                );

                selectedMedias!.value = List.from(selectedMedias!.value)
                  ..addAll(newSelectedFiles);
              } else {
                showErrorToast(context: context, text: '選擇數量超過上限！');
              }
            }
          }
              : null,
          valueColor: fontColor,
        ),
        if (selectedMedias != null)
          Container(
            width: double.infinity,
            child: Wrap(
                spacing: 8.sp,
                runSpacing: 8.sp,
                children: selectedMedias!.value.map((file) {
                  return _buildMediaThumbnail(
                      file: file,
                      thumbWidth: thumbWidth,
                      thumbHeight: thumbHeight,
                      selectedMedias: selectedMedias,
                      isDelete: isDelete);
                }).toList()),
          ),
        Container(
          width: double.infinity,
          child: Wrap(
            spacing: 8.sp,
            runSpacing: 8.sp,
            children: mediaUrlList.map((url) {
              return GestureDetector(
                  onTap: () {
                    showMediaDialog(context, mediaUrl: url);
                  },
                  child: _buildMediaFromUrl(url, thumbWidth, thumbHeight));
            }).toList(),
          ),
        )
      ],
    );
  }
}

Widget _buildMediaFromUrl(String url, double thumbWidth, double thumbHeight) {
  if (isImageFile(url)) {
    // 如果是圖片
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          url,
          width: thumbWidth,
          height: thumbHeight,
          fit: BoxFit.cover,
        ),
      ),
    );
  } else if (url.endsWith('.mp4')) {
    // 如果是影片
    return FutureBuilder<String?>(
      future: VideoThumbnail.thumbnailFile(
        video: url,
        imageFormat: ImageFormat.PNG,
        maxWidth: 128,
        quality: 25,
      ),
      builder: (context, thumbnailSnapshot) {
        if (thumbnailSnapshot.connectionState == ConnectionState.waiting) {
          // Loading
          return Container(
            width: thumbWidth,
            height: thumbHeight,
            child: Center(child: CircularProgressIndicator()),
          );
        } else if (thumbnailSnapshot.hasData) {
          String? thumbPath = thumbnailSnapshot.data;

          return FutureBuilder<Duration?>(
            future: _getVideoDuration(url), // 獲取影片時長
            builder: (context, durationSnapshot) {
              if (durationSnapshot.connectionState == ConnectionState.waiting) {
                // Loading
                return Container(
                  width: thumbWidth,
                  height: thumbHeight,
                  child: Center(child: CircularProgressIndicator()),
                );
              }

              // 如果時長和縮略圖都已經加載完畢
              String durationText = "";
              if (durationSnapshot.hasData) {
                durationText = _formatDuration(durationSnapshot.data!);
              }

              return Stack(
                children: [
                  Container(
                    width: thumbWidth,
                    height: thumbHeight,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.file(
                        File(thumbPath!),
                        width: thumbWidth,
                        height: thumbHeight,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 4.sp,
                    right: 4.sp,
                    child: Container(
                      color: Colors.black54,
                      padding: EdgeInsets.all(4.sp),
                      child: Text(
                        durationText.isNotEmpty ? durationText : "",
                        style: TextStyle(color: Colors.white, fontSize: 10.sp),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        } else {
          return Container(
            width: thumbWidth,
            height: thumbHeight,
            child: Icon(Icons.error),
          );
        }
      },
    );
  } else {
    return Container(
      width: thumbWidth,
      height: thumbHeight,
      color: Colors.grey,
      child: Icon(Icons.error),
    );
  }
}

Widget _buildMediaThumbnail(
    {required File? file,
      required double thumbWidth,
      required double thumbHeight,
      required ValueNotifier<List<File>>? selectedMedias,
      required bool isDelete}) {
  if (file != null) {
    return FutureBuilder<Widget>(
      future: _getLocalMediaThumbnail(
        file: file,
        thumbWidth: thumbWidth,
        thumbHeight: thumbHeight,
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Stack(
            children: [
              if (snapshot.hasData) ...[
                GestureDetector(
                  onTap: () {
                    showMediaDialog(context, mediaFile: file);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: snapshot.data,
                    ),
                  ),
                ),
              ] else ...[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: assetImage(
                      'ic_broken_image.png',
                      width: thumbWidth,
                      height: thumbHeight,
                    ),
                  ),
                ),
              ],
              if (isDelete)
                Positioned(
                  top: 4.sp,
                  right: 4.sp,
                  child: GestureDetector(
                    onTap: () {
                      selectedMedias!.value = List.from(selectedMedias.value)
                        ..remove(file);
                    },
                    child: assetImage('ic_cancel.png',
                        width: 12.sp, color: AppColors.grey),
                  ),
                ),
            ],
          );
        } else {
          return Container(
            width: 100,
            height: 100,
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  } else {
    return Container(
      width: thumbWidth,
      height: thumbHeight,
      child: Icon(Icons.error),
    );
  }
}

Future<Duration?> _getVideoDuration(String videoUrl) async {
  final VideoPlayerController controller =
  VideoPlayerController.networkUrl(Uri.parse(videoUrl));
  await controller.initialize();
  final duration = controller.value.duration;
  await controller.dispose();
  return duration;
}

String _formatDuration(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');
  final String hours = twoDigits(duration.inHours);
  final String minutes = twoDigits(duration.inMinutes.remainder(60));
  final String seconds = twoDigits(duration.inSeconds.remainder(60));
  return '$hours:$minutes:$seconds';
}

Future<Widget> _getLocalMediaThumbnail(
    {required File file,
      required double thumbWidth,
      required double thumbHeight}) async {
  if (isImageFile(file.path)) {
    return Image.file(
      File(file.path),
      width: thumbWidth,
      height: thumbHeight,
      fit: BoxFit.cover,
    );
  } else {
    final String? thumbPath = await VideoThumbnail.thumbnailFile(
      video: file.path,
      imageFormat: ImageFormat.PNG,
      maxWidth: 128,
      quality: 25,
    );

    if (thumbPath != null) {
      final VideoPlayerController controller =
      VideoPlayerController.file(File(file.path));
      await controller.initialize();
      final duration = controller.value.duration;
      controller.dispose();

      return Stack(
        children: [
          Image.file(
            File(thumbPath),
            width: thumbWidth,
            height: thumbHeight,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 4.sp,
            right: 4.sp,
            child: Container(
              color: Colors.black54,
              padding: EdgeInsets.all(4.sp),
              child: Text(
                _formatDuration(duration),
                style: TextStyle(color: Colors.white, fontSize: 10.sp),
              ),
            ),
          ),
        ],
      );
    } else {
      return Container(
        width: thumbWidth,
        height: thumbHeight,
        color: Colors.grey,
        child: Icon(Icons.videocam),
      );
    }
  }
}
