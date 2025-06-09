import 'dart:io';
import 'package:dio/dio.dart';
import 'package:haohsing_flutter/model/request/user/deleteAccount/DeleteAccountRequestParams.dart';
import 'package:haohsing_flutter/model/request/user/longtime/LongtimeRequestParams.dart';
import 'package:haohsing_flutter/model/request/user/sentFcmToken/FcmTokenRequestBody.dart';
import "package:haohsing_flutter/net/NetworkInterface.dart";
import 'package:haohsing_flutter/utils/AppLog.dart';
import '../model/request/user/appleLogin/AppleLoginRequestParams.dart';
import '../model/request/user/changePassword/ChangePasswordRequestBody.dart';
import '../model/request/user/changeRegion/ChangeRegionRequestBody.dart';
import '../model/request/user/changeUserName/ChangeUserNameRequestBody.dart';
import '../model/request/user/changeUserPhone/ChangeUserPhoneRequestBody.dart';
import '../model/request/user/forgetPassword/ForgetPasswordRequestBody.dart';
import '../model/request/user/googleLogin/GoogleLoginRequestParams.dart';
import '../model/request/user/login/UserLoginRequestBody.dart';
import '../model/request/user/resendActiveMail/ResendActiveMailRequestParams.dart';
import '../model/request/user/userAdd/UserAddRequestBody.dart';
import '../model/request/user/userExist/UserExistRequestParams.dart';
import '../model/response/user/deleteAccount/DeleteAccountResponse.dart';
import '../model/response/user/forgetPassword/ForgetPasswordResponse.dart';
import '../model/response/user/login/LoginResponse.dart';
import '../model/response/user/resendActiveMail/ResendActiveMailResponse.dart';
import '../model/response/user/user/UserResponse.dart';
import '../model/response/user/userAdd/UserAddResponse.dart';
import 'package:http_parser/http_parser.dart';
import 'ApiEndPoint.dart';

class UserApiManager {
  UserApiManager._();

  static final UserApiManager instance = UserApiManager._();

  final NetworkInterface _networkInterface = NetworkInterface();

  Future<LoginResponse?> login({required String account, required String psw}) async {
    final response = await _networkInterface.post(
      url: ApiEndPoint.userLogin,
      body: UserLoginRequestBody(account: account, psw: psw),
    );
    final loginResponse = LoginResponse.fromJson(response.data as Map<String, dynamic>);
    return loginResponse;
  }

  Future<LoginResponse?> googleLogin({required GoogleLoginRequestParams params}) async {
    final response = await _networkInterface.get(
      url: ApiEndPoint.userLoginGoogle,
      query: params.toJson(),
    );
    final loginResponse = LoginResponse.fromJson(response.data as Map<String, dynamic>);
    return loginResponse;
  }

  Future<LoginResponse?> appleLogin({required AppleLoginRequestParams params}) async {
    final response = await _networkInterface.get(
      url: ApiEndPoint.userLoginApple,
      query: params.toJson(),
    );
    final loginResponse = LoginResponse.fromJson(response.data as Map<String, dynamic>);
    return loginResponse;
  }

  Future<LoginResponse?> longtime({required String token, required String loginType}) async {
    LongtimeRequestParams params = LongtimeRequestParams(loginType: loginType);
    final response = await _networkInterface.get(url: ApiEndPoint.userLongtime, query: params.toJson(), userToken: token);
    return LoginResponse.fromJson(response.data as Map<String, dynamic>);
  }

  Future<ForgetPasswordResponse?> forgetPassword({required ForgetPasswordRequestBody body}) async {
    final response = await _networkInterface.post(url: ApiEndPoint.userForgetPassword, body: body);
    final forgetPasswordResponse = ForgetPasswordResponse.fromJson(response.data as Map<String, dynamic>);

    return forgetPasswordResponse;
  }

  Future<UserResponse?> getUserInfo({required String token}) async {
    final response = await _networkInterface.get(url: ApiEndPoint.user, userToken: token);
    final userResponse = UserResponse.fromJson(response.data as Map<String, dynamic>);

    return userResponse;
  }

  Future<bool> changeUserName(
      {required String token, required ChangeUserNameRequestBody changeUserNameRequestBody}) async {
    final response =
        await _networkInterface.put(body: changeUserNameRequestBody, url: ApiEndPoint.userUpd, userToken: token);

    return response.data;
  }

  Future<bool> changeUserPhone(
      {required String token, required ChangeUserPhoneRequestBody changeUserPhoneRequestBody}) async {
    final response =
        await _networkInterface.put(body: changeUserPhoneRequestBody, url: ApiEndPoint.userUpd, userToken: token);

    return response.data;
  }

  Future<bool> changePassword(
      {required String token, required ChangePasswordRequestBody changePasswordRequestBody}) async {
    final response = await _networkInterface.post(
        body: changePasswordRequestBody, url: ApiEndPoint.userUpdPassword, userToken: token);

    return response.data;
  }

  Future<bool> changeUserRegion(
      {required String token, required ChangeRegionRequestBody changeRegionRequestBody}) async {
    final response =
        await _networkInterface.put(body: changeRegionRequestBody, url: ApiEndPoint.userUpd, userToken: token);

    return response.data;
  }

  Future<bool> isUserExist({required UserExistRequestParams userExistRequestParams}) async {
    final response = await _networkInterface.get(url: ApiEndPoint.userExist, query: userExistRequestParams.toJson());
    return response.data;
  }

  Future<UserAddResponse?> userAdd({required UserAddRequestBody userAddRequestBody}) async {
    final response = await _networkInterface.post(url: ApiEndPoint.userAdd, body: userAddRequestBody);

    final userAddResponse = UserAddResponse.fromJson(response.data);

    return userAddResponse;
  }

  Future<String> updateAvatar({
    required String token,
    required File avatarImage,
  }) async {
    try {
      FormData formData = FormData.fromMap({
        "file": await MultipartFile.fromFile(
          avatarImage.path,
          filename: "avatar.jpg",
          contentType: MediaType('image', 'jpeg'),
        ),
      });

      final response = await _networkInterface.post(
          url: ApiEndPoint.userUpdHeadshot, body: formData, contentType: 'multipart/form-data', userToken: token);
      return response.data;
    } catch (e) {
      AppLog.e('Error uploading avatar: $e');
      return '';
    }
  }

  Future<ResendActiveMailResponse?> resendActiveMail(
      {required ResendActiveMailRequestParams params}) async {
    try {
      final response = await _networkInterface.post(url: ApiEndPoint.userResendActiveMail, query: params.toJson());
      final resendActiveMailResponse = ResendActiveMailResponse.fromJson(response.data as Map<String, dynamic>);

      return resendActiveMailResponse;
    } catch (e) {
      AppLog.e('Error uploading avatar: $e');
      return null;
    }
  }

  Future<DeleteAccountResponse?> deleteAccount({required String token, required String account}) async {
    try {
      DeleteAccountRequestParams params = DeleteAccountRequestParams(account: account);
      final response = await _networkInterface.delete(url: ApiEndPoint.user, userToken: token, query: params.toJson());
      final deleteAccountResponse = DeleteAccountResponse.fromJson(response.data as Map<String, dynamic>);

      return deleteAccountResponse;
    } catch (e) {
      AppLog.e('Error deleteAccount API: $e');
      return null;
    }
  }

  Future<bool> sentFcmToken({required String token, required String fcmToken}) async {
    try {
      FcmTokenRequestBody body = FcmTokenRequestBody(token: fcmToken);
      final response = await _networkInterface.post(url: ApiEndPoint.userFirebase, userToken: token, body: body);

      return response.data;
    } catch (e) {
      AppLog.e('Error sentFcmToken API: $e');
      return false;
    }
  }

}

bool checkResult(int number) {
  if (number == 0) {
    return true;
  } else if (number == 10) {
    AppLog.e("登錄錯誤");
  } else if (number == 20) {
    AppLog.e("伺服器錯誤");
  }
  return false;
}
