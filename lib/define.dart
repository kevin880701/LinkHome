export 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/model/response/msg/getMsgs/GetMsgResponse.dart';
import 'package:haohsing_flutter/resources/AppColors.dart';
import 'package:haohsing_flutter/resources/AppTexts.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';
import 'package:intl/intl.dart';

enum InputType {
  EMAIL,         // 電子郵件
  PHONENUMBER,    // 數字
  NUMBER,        // 數字
  ALPHANUMERIC,  // 僅限英文字母和數字
  ALL,           // 所有字符
}
class Define {
  //region Singleton 單例模式，確保一個類別只有一個實例
  Define._();

  static final Define instance = Define._();

  Color statusBarBgColor = AppColors.white;
  Brightness statusBarIconColor = Brightness.light;

  init() async {
  }
}

///
/// 設置狀態欄的顏色和圖標顏色。
///
/// 這個函數用於設置應用程序的狀態欄背景顏色和圖標顏色。
///
/// 参数：
///   statusBarBgColor: 狀態欄的背景顏色
///   statusBarIconColor: 狀態欄圖標的顏色
///
// void setStatusBar(Color statusBarBgColor, Brightness statusBarIconColor) {
//   Define.instance.statusBarBgColor = statusBarBgColor;
//   Define.instance.statusBarIconColor = statusBarIconColor;
//   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//     statusBarColor: statusBarBgColor,
//     statusBarIconBrightness: statusBarIconColor,
//     systemNavigationBarColor: statusBarBgColor,
//     systemNavigationBarIconBrightness: statusBarIconColor,
//   ));
// }
void setStatusBar() {
  // 暫時固定設透明底色
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.light,
  ));
}

final emojiRegExp = RegExp(
  r'([\u20A0-\u20CF]|[\u2100-\u214F]|[\u312A-\u3300]|\ud83c[\ud000-\udfff]|\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff]|[\u260e\u231a\u23f0\u23f1\u23f2\u23f3\u2696\u2692\u26cf\u2699\u26d3\u2694\u26b0\u26b1\u2697\u2709\u2702\u2712\u270f\u2764\u2763\u262e\u271d\u262a\u2638\u2721\u262f\u2626\u26ce\u2648-\u2653\u269b\u2622\u2623\u2734\u274c\u2b55\u26d4\u2668\u2757\u2755\u2753\u2754\u303d\u26a0\u269c\u267b\u26a7\u20e3\u23cf\u2705\u2747\u2733\u274e\u24c2\u267f\u25b6\u23f8\u23ef\u23f9\u23fa\u23ed\u23ee\u23e9\u23ea\u23eb\u23ec\u25c0\u27a1\u2b05\u2b06\u2b07\u2197\u2198\u2199\u2196\u2195\u2194\u21aa\u21a9\u2934\u2935\u2795\u2796\u2797\u2716\u267e\u3030\u27b0\u27bf\u2714\u2611\u26ab\u26aa\u25aa\u25ab\u25fe\u25fd\u25fc\u25fb\u2b1b\u2b1c\u2660\u2663\u2665\u2666\u2620\u200d\u2642\u2640\u2744\u2604\u26c5\u26c4\u26a1\u2614\u2602])',
);

final symbolsRegExp = RegExp(
    r'[\u3001\u3002\u00a9\u00ae\uff1f\uff01\uff0c\u007e\u0060\u0021\u0040\u0023\u0024\u0025\u005e\u0026\u002a\u0028\u0029\u005f\u002d\u002b\u003d\u005b\u005d\u007b\u007d\u007c\u005c\u003a\u003b\u0022\u0027\u003c\u003e\u002c\u002e\u003f\u002f\u00a3\u00a2\u20ac\u00a5\u00a7\u2122\u221a\u03c0\u00f7\u00d7\u00b0\u00b6]'
);

extension IntExtension on int {
  String getKindText() {
    switch (this) {
      case 11:
        return '完工照';
      case 12:
        return '龍頭照';
      case 13:
        return '漏水斷路器';
      case 14:
        return '水壓表';
      case 21:
        return '換好的濾芯照';
      case 22:
        return '舊濾心照';
      case 31:
        return '裝置完工照 ';
      case 32:
        return '更換下的零件照';
      default:
        return '未知種類';
    }
  }

}

///
/// 根據指定的透明度將顏色進行調整，返回新的具有指定透明度的Color對象。
///
/// params：
///   color: 要調整透明度的顏色
///   opacity: 透明度值，取值範圍為0（完全透明）到1（完全不透明）
///
/// return：
///   返回新的具有指定透明度的Color對象。
///
Color colorOpacity(Color color, double opacity) {
  int alpha = (opacity * 255).round();
  int red = color.red;
  int green = color.green;
  int blue = color.blue;
  return Color.fromARGB(alpha, red, green, blue);
}

Widget getDashedLine({required Color color}) {
  return CustomPaint(
    painter: DashedLinePainter(color: color),
  );
}

class DashedLinePainter extends CustomPainter {
  final Color color;

  DashedLinePainter({this.color = Colors.grey});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color // 虛線的顏色
      ..strokeWidth = 1 // 虛線的寬度
      ..style = PaintingStyle.stroke;

    final dashWidth = 5; // 虛線的寬度
    final dashSpace = 5; // 虛線之間的間距

    double startX = 0;
    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

/// 格式化手機號碼，將數字格式化為 4 位數字後跟隨其他數字的格式。
///
/// 該方法會移除所有非數字字符，然後將號碼格式化為 'xxxx-xxxx' 的形式，
/// 如果號碼小於 5 位，則返回原號碼。
///
/// Params：
///   - phoneNumber: 要格式化的手機號碼字串
///
/// Return：
///   返回格式化後的手機號碼，格式為 'xxxx-xxxx'，如果少於 5 位數字，則返回原字串。
///
/// 示範：
/// ```
/// String formattedNumber = formatPhoneNumber('0912345678'); // 結果為 '0912-345678'
/// ```
String formatPhoneNumber(String phoneNumber) {
  phoneNumber = phoneNumber.replaceAll(RegExp(r'\D'), '');

  if (phoneNumber.length < 5) {
    return phoneNumber;
  }

  String part1 = phoneNumber.substring(0, 4);
  String part2 = phoneNumber.substring(4);

  return '$part1-$part2';
}

String removeDashes(String input) {
  return input.replaceAll('-', '');
}

Widget notifyIcon(List<GetMsgResponse> messages, String icon, Color iconColor){
  bool isNewMsg = messages.any((msg) => msg.isRead == 0);

  return Stack(
    children: [
      assetImage(icon, width: 24.sp, height: 24.sp, color: iconColor),
      if (isNewMsg) ...[
        Positioned(
          right: 0.sp,
          top: 0.sp,
          child: Container(
            width: 10.sp,
            height: 10.sp,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 1.sp,
              ),
            ),
            child: CircleAvatar(
              radius: 4.sp,
              backgroundColor: AppColors.errorRed,
            ),
          ),
        ),
      ]
    ],
  );
}

String formatDateWithTime(DateTime dateTime) {
  final DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
  return formatter.format(dateTime);
}

String formatDateWithDay(DateTime dateTime) {
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  return formatter.format(dateTime);
}



