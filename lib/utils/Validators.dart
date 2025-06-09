
import 'dart:convert';

extension StringExtension on String {

  /// 檢查字串是否為有效的 JSON 格式
  ///
  /// Return：
  ///   如果字串可以被解析為有效的 JSON，返回 true；否則返回 false。
  ///
  /// 示範：
  /// ```
  /// bool result = '{"key": "value"}'.isValidJson(); // return true
  /// bool result = 'invalid json'.isValidJson(); // return false
  /// ```
  bool isValidJson() {
    try {
      jsonDecode(this);
      return true;
    } catch (e) {
      return false;
    }
  }
  ///
  /// 用於驗證密碼是否符合規則。
  ///
  /// Params：
  ///   - password: 要驗證的密碼字串
  /// Return：
  ///   如果密碼符合規則，返回 true；否則返回 false
  ///
  /// 示範：
  /// ```
  /// bool isValid = 'password123'.isValidatePassword();
  /// ```
  bool isValidatePassword() {
    if (this.isEmpty) return false;
    if (this.length < 8 || this.length > 20) return false;
    RegExp regex = RegExp(r'^[A-Za-z0-9]+$');
    return regex.hasMatch(this);
  }

  ///
  /// 用於檢查字串是否能被解析為整數。
  ///
  /// Params：
  ///   - value: 要檢查的字串
  /// Return：
  ///   如果字串能被解析為整數，返回 true；否則返回 false
  ///
  /// 示範：
  /// ```
  /// bool isValid = '123'.tryInt();
  /// ```
  bool tryInt() {
    try {
      return int.tryParse(this) != null;
    } catch (e) {
      return false;
    }
  }

  ///
  /// 檢查字串是否包含表情符號。
  ///
  /// Params：
  ///   - text: 要檢查的字串
  /// Return：
  ///   如果包含表情符號，返回匹配結果；否則返回空列表
  ///
  /// 示範：
  /// ```
  /// Iterable<RegExpMatch> matches = '😊'.containsEmoji();
  /// ```
  Iterable<RegExpMatch> containsEmoji() {
    RegExp regex = RegExp(
      '/\uD83C\uDFF4\uDB40\uDC67\uDB40\uDC62(?:\uDB40\uDC77\uDB40\uDC6C\uDB40\uDC73|\uDB40\uDC73\uDB40\uDC63\uDB40\uDC74|\uDB40\uDC65\uDB40\uDC6E\uDB40\uDC67)\uDB40\uDC7F|(?:\uD83E\uDDD1\uD83C\uDFFF\u200D\u2764(?:\uFE0F\u200D(?:\uD83D\uDC8B\u200D)?|\u200D(?:\uD83D\uDC8B\u200D)?)\uD83E\uDDD1|\uD83D\uDC69\uD83C\uDFFF\u200D\uD83E\uDD1D\u200D(?:\uD83D[\uDC68\uDC69])|\uD83E\uDEF1\uD83C\uDFFF\u200D\uD83E\uDEF2)(?:\uD83C[\uDFFB-\uDFFE])',
    );
    return regex.allMatches(this);
  }

  ///
  /// 驗證手機號碼是否符合台灣手機號碼格式（09開頭，後跟8位數字）。
  ///
  /// Params：
  ///   - phoneNumber: 要驗證的手機號碼
  /// Return：
  ///   如果符合格式，返回 true；否則返回 false
  ///
  /// 示範：
  /// ```
  /// bool isValid = '0912345678'.isValidPhoneNumber();
  /// ```
  bool isValidPhoneNumber() {
    final regex = RegExp(r'^09\d{8}$');
    return regex.hasMatch(this);
  }
}