import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../resources/AppColors.dart';
import '../widget/DialogTitleBar.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

class PdfDialog extends HookConsumerWidget {
  const PdfDialog({
    super.key,
    required this.pdfUrl,
  });

  final String pdfUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenHeight = MediaQuery.of(context).size.height;
    double statusBarHeight = MediaQuery.of(context).padding.top;
    final localPdfPath = useState<String?>(null);
    final errorMessage = useState<String?>(null);

    useEffect(() {
      Future<void> downloadAndLoadPdf() async {
        try {
          // 下载 PDF 文件
          final response = await http.get(Uri.parse(pdfUrl));

          if (response.statusCode == 200) {
            final dir = await getTemporaryDirectory();
            final file = File('${dir.path}/temp.pdf');
            await file.writeAsBytes(response.bodyBytes);
            localPdfPath.value = file.path;
          } else {
            throw Exception('Failed to download PDF: ${response.statusCode}');
          }
        } catch (e) {
          AppLog.e('Error downloading PDF: $e');
          errorMessage.value = 'PDF連結錯誤！';
        }
      }

      downloadAndLoadPdf();
      return null;
    }, []);

    return Dialog(
      insetPadding: EdgeInsets.zero,
      alignment: Alignment.bottomCenter,
      child: Container(
        height: screenHeight - statusBarHeight - 16,
        padding: EdgeInsets.all(16.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DialogTitleBar(),
            SizedBox(height: 16.sp),
            if (localPdfPath.value != null) ...[
              Expanded(
                child: PDFView(
                  filePath: localPdfPath.value!,
                  enableSwipe: true,
                  swipeHorizontal: false,
                  autoSpacing: false,
                  pageFling: false,
                  onRender: (_pages) {
                    AppLog.i('Rendered $_pages pages.');
                  },
                  onError: (error) {
                    AppLog.e('Error: $error');
                  },
                  onPageError: (page, error) {
                    AppLog.e('Error on page $page: $error');
                  },
                ),
              ),
            ] else if (errorMessage.value != null) ...[
              Expanded(
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [customText(errorMessage.value!,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.errorRed)],),
              ),
            ] else ...[
              Expanded(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
