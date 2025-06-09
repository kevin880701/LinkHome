import 'dart:io';
import 'package:flutter/material.dart';
import 'package:haohsing_flutter/resources/AppColors.dart';
import 'package:haohsing_flutter/utils/FileManager.dart';
import 'package:video_player/video_player.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MediaDialog extends HookConsumerWidget {
  const MediaDialog({
    super.key,
    this.mediaUrl,
    this.mediaFile,
  });

  final String? mediaUrl;
  final File? mediaFile;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final videoPlayerController = useState<VideoPlayerController?>(null);
    final isPlaying = useState(false);

    final mediaSize = useState<Size?>(null);

    // 判斷是影片還是圖片
    final isVideo = (mediaUrl != null && isVideoFile(mediaUrl!)) ||
        (mediaFile != null && isVideoFile(mediaFile!.path));

    // 當 mediaFile 或 mediaUrl 發生變化時，初始化 VideoPlayerController
    useEffect(() {
      if (isVideo) {
        final controller = mediaFile != null
            ? VideoPlayerController.file(File(mediaFile!.path)) // 如果是文件，使用 File
            : VideoPlayerController.networkUrl(
            Uri.parse(mediaUrl!)); // 如果是 URL，使用 networkUrl
        videoPlayerController.value = controller;

        controller.initialize().then((_) {
          isPlaying.value = true;
          mediaSize.value = controller.value.size;
          controller.play();
          controller.setLooping(true); // 讓影片循環播放
        });

        return () {
          controller.pause();
          controller.dispose();
        };
      } else if (mediaFile != null) {
        // 如果是圖片文件，預先加載獲取圖片尺寸
        Image.file(mediaFile!).image.resolve(ImageConfiguration()).addListener(
          ImageStreamListener((ImageInfo info, bool _) {
            mediaSize.value = Size(info.image.width.toDouble(), info.image.height.toDouble());
          }),
        );
      } else if (mediaUrl != null) {
        // 如果是圖片網路地址，預先加載以獲取圖片尺寸
        Image.network(mediaUrl!).image.resolve(ImageConfiguration()).addListener(
          ImageStreamListener((ImageInfo info, bool _) {
            mediaSize.value = Size(info.image.width.toDouble(), info.image.height.toDouble());
          }),
        );
      }

      return null;
    }, [mediaFile, mediaUrl]);

    // 動態設定BoxConstraints，限制最大寬高為屏幕寬高的75%
    BoxConstraints _getDynamicConstraints(Size? size, BuildContext context) {
      final screenSize = MediaQuery.of(context).size;
      if (size != null) {

        final maxWidth = screenSize.width * 0.75;
        final maxHeight = screenSize.height * 0.75;

        final widthRatio = maxWidth / size.width;
        final heightRatio = maxHeight / size.height;

        final ratio = widthRatio < heightRatio ? widthRatio : heightRatio;

        return BoxConstraints(
          maxWidth: size.width * ratio,
          maxHeight: size.height * ratio,
          minWidth: 100.sp,
          minHeight: 150.sp,
        );
      } else {
        return BoxConstraints(
          maxWidth: screenSize.width * 0.75,
          maxHeight: screenSize.height * 0.75,
          minWidth: 100.sp,
          minHeight: 150.sp,
        );
      }
    }

    // 切換播放/暫停狀態
    void togglePlayPause() {
      if (videoPlayerController.value != null) {
        if (isPlaying.value) {
          videoPlayerController.value!.pause();
        } else {
          videoPlayerController.value!.play();
        }
        isPlaying.value = !isPlaying.value;
      }
    }

    return Dialog(
      child: Container(
        padding: EdgeInsets.all(4.sp),
        constraints: _getDynamicConstraints(mediaSize.value, context), // 动态约束
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: isVideo && videoPlayerController.value != null
                  ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: videoPlayerController
                          .value!.value.aspectRatio >
                          0
                          ? videoPlayerController
                          .value!.value.aspectRatio
                          : 16 / 9,
                      child:
                      VideoPlayer(videoPlayerController.value!),
                    ),
                  ),
                  VideoProgressIndicator(
                    videoPlayerController.value!,
                    allowScrubbing: true,
                    colors: VideoProgressColors(
                      playedColor: Colors.blue,
                      bufferedColor: Colors.grey,
                      backgroundColor: Colors.black,
                    ),
                  ),
                  // 添加播放/暫停按鈕
                  IconButton(
                    icon: Icon(
                      isPlaying.value
                          ? Icons.pause
                          : Icons.play_arrow,
                      size: 36.sp,
                      color: AppColors.primaryYellow,
                    ),
                    onPressed: togglePlayPause,
                  ),
                ],
              )
                  : (mediaFile != null || mediaUrl != null)
                  ? ClipRRect(
                borderRadius: BorderRadius.circular(12.sp),
                child: mediaFile != null
                    ? Image.file(
                  File(mediaFile!.path),
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return _buildImageErrorWidget();
                  },
                )
                    : Image.network(
                  mediaUrl!,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return _buildImageErrorWidget();
                  },
                ),
              )
                  : const Center(
                child: Text('影像錯誤'),
              ),
            ),
            Positioned(
              right: 12.sp,
              top: 12.sp,
              child: GestureDetector(
                onTap: () {
                  if (videoPlayerController.value != null) {
                    videoPlayerController.value!.pause();
                    videoPlayerController.value!.dispose();
                  }
                  Navigator.of(context).pop();
                },
                child: Icon(Icons.close, size: 18.sp, color: AppColors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 圖片錯誤時Widget
  Widget _buildImageErrorWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'ic_broken_image.png',
          width: 36.sp,
          height: 36.sp,
          color: Colors.grey,
        ),
        Text(
          '圖片載入失敗',
          style: TextStyle(fontSize: 8.sp),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
