

import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:haohsing_flutter/utils/ToastHelper.dart';

Future<List<File>> pickMedia({
  required BuildContext context,
  double sizeLimitMB = 96,
  int fileLimit = 1,
  FileType fileType = FileType.media,
}) async {
  // 如果 sizeLimitMB 超過 96，則將其設為 96
  final effectiveSizeLimitMB = sizeLimitMB > 96 ? 96 : sizeLimitMB;

  // 設定是否允許多選，根據 fileLimit 決定
  bool allowMultiple = fileLimit > 1;

  // 調用 FilePicker 選擇文件
  final result = await FilePicker.platform.pickFiles(
    type: fileType,
    allowMultiple: allowMultiple,
  );

  if (result != null && result.files.isNotEmpty) {
    // 過濾符合大小限制的文件
    final selectedFiles = result.files.where((file) {
      // 將大小從位元組轉換為 MB 進行比較

      double fileSizeMB = file.size / (1024 * 1024);
      bool isOverSize = fileSizeMB <= effectiveSizeLimitMB;
      if(!isOverSize){
        showErrorToast(context: context, text: '檔案大小${fileSizeMB.toStringAsFixed(1)}MB，超過上限${effectiveSizeLimitMB}MB');
      }
      return isOverSize;
    }).toList();

    // 數量限制
    if (selectedFiles.length > fileLimit) {
      selectedFiles.removeRange(fileLimit, selectedFiles.length);
      showErrorToast(context: context, text: '選擇數量超過上限！');
    }

    // 返回符合條件的檔案列表
    return selectedFiles
        .map((file) => File(file.path!)) // 將路徑轉換為 File
        .toList();
  }

  // 沒有選擇文件
  return [];
}

bool isImageFile(String filePath) {
  final imageExtensions = ['.jpg', '.jpeg', '.png', '.gif', '.bmp', '.webp', '.heic', '.heif', '.tiff'];

  // 將 filePath 轉換為小寫，確保判斷時不區分大小寫
  final lowerCaseFilePath = filePath.toLowerCase();

  // 檢查文件路徑是否以任何圖片擴展名結尾
  return imageExtensions.any((extension) => lowerCaseFilePath.endsWith(extension));
}

bool isVideoFile(String filePath) {
  final videoExtensions = ['.mp4', '.mov', '.avi', '.wmv', '.flv', '.mkv', '.webm', '.m4v'];

  // 將 filePath 轉換為小寫，確保判斷時不區分大小寫
  final lowerCaseFilePath = filePath.toLowerCase();

  // 檢查文件路徑是否以任何影片擴展名結尾
  return videoExtensions.any((extension) => lowerCaseFilePath.endsWith(extension));
}