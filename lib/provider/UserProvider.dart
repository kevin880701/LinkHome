import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:haohsing_flutter/model/response/user/deleteAccount/DeleteAccountResponse.dart';
import 'package:haohsing_flutter/model/response/user/resendActiveMail/ResendActiveMailResponse.dart';
import 'package:haohsing_flutter/model/response/user/userAdd/UserAddResponse.dart';
import 'package:haohsing_flutter/provider/UpdateStateProvider.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';
import 'package:haohsing_flutter/utils/NotificationService.dart';
import 'package:haohsing_flutter/utils/SharedPreferencesHelper.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import '../data/LoginFakerData.dart';
import '../model/request/user/appleLogin/AppleLoginRequestParams.dart';
import '../model/request/user/changePassword/ChangePasswordRequestBody.dart';
import '../model/request/user/changeRegion/ChangeRegionRequestBody.dart';
import '../model/request/user/changeUserName/ChangeUserNameRequestBody.dart';
import '../model/request/user/changeUserPhone/ChangeUserPhoneRequestBody.dart';
import '../model/request/user/forgetPassword/ForgetPasswordRequestBody.dart';
import '../model/request/user/googleLogin/GoogleLoginRequestParams.dart';
import '../model/request/user/resendActiveMail/ResendActiveMailRequestParams.dart';
import '../model/request/user/userAdd/UserAddRequestBody.dart';
import '../model/request/user/userExist/UserExistRequestParams.dart';
import '../model/response/user/forgetPassword/ForgetPasswordResponse.dart';
import '../model/response/user/login/LoginResponse.dart';
import '../model/response/user/user/UserResponse.dart';
import '../net/UserApiManager.dart';

final userProvider = StateNotifierProvider<UserNotifier, UserState>((ref) {
  return UserNotifier(ref);
});

class UserState {
  final UserResponse? userResponse;
  final LoginResponse? loginResponse;

  UserState({this.userResponse, this.loginResponse});

  UserState copyWith({
    UserResponse? userResponse,
    LoginResponse? loginResponse,
  }) {
    return UserState(
      userResponse: userResponse ?? this.userResponse,
      loginResponse: loginResponse ?? this.loginResponse,
    );
  }
}

class UserNotifier extends StateNotifier<UserState> {
  UserNotifier(this.ref) : super(UserState()) {
    ref.listen<UpdateState>(updateStateProvider, (previous, next) {
      if ((previous?.userUpdated != next.userUpdated)) {
        getUserInfo();
      }
    });
  }
  final Ref ref;
  final UserApiManager userApiManager = UserApiManager.instance;

  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: ['email'],
  );

  Future<LoginResponse?> login(String account, String psw) async {
    try {
      // 加入假資料判斷
      if (account == 'user@mail.com') {
        state = state.copyWith(loginResponse: loginResponseUser);
        return loginResponseUser;
      }

      if (account == 'engineer@mail.com') {
        state = state.copyWith(loginResponse: loginResponseEngineer);
        return loginResponseEngineer;
      }

      LoginResponse? loginResponse = await userApiManager.login(account: account, psw: psw);

      if (loginResponse != null) {
        if (loginResponse.result != 0) {
          state = state.copyWith(loginResponse: loginResponse);
          return loginResponse;
        }
        LoginResponse? longtimeResponse = await userApiManager.longtime(token: loginResponse.token ?? "",
            loginType: loginResponse.loginType ?? "");
        state = state.copyWith(loginResponse: longtimeResponse);

        return longtimeResponse;
      }
      state = state.copyWith(loginResponse: loginResponse);
      return loginResponse;
    } catch (e, stackTrace) {
      AppLog.e("login Error：$e");
    }
    return null;
  }

  Future<LoginResponse?> googleLogin() async {
    try {
      final GoogleSignInAccount? account = await _googleSignIn.signIn();
      if (account != null) {
        final GoogleSignInAuthentication auth = await account.authentication;
        if (auth.idToken != null) {
          AppLog.i('Google 登入成功');
          GoogleLoginRequestParams googleLoginRequestParams = GoogleLoginRequestParams(idToken: auth.idToken!);

          final googleLoginResponse = await userApiManager.googleLogin(params: googleLoginRequestParams);
          await _googleSignIn.signOut();

          if (googleLoginResponse != null) {
            if (googleLoginResponse.result != 0) {
              state = state.copyWith(loginResponse: googleLoginResponse);
              return googleLoginResponse;
            }

            final longtimeResponse = await userApiManager.longtime(token: googleLoginResponse.token ?? "",
                loginType: googleLoginResponse.loginType ?? "");
            if (longtimeResponse != null) {
              state = state.copyWith(loginResponse: longtimeResponse);
              return longtimeResponse;
            }

            state = state.copyWith(loginResponse: googleLoginResponse);
            return googleLoginResponse;
          } else {
            AppLog.w("Google Login Response is null");
          }
        } else {
          AppLog.w("ID Token is null");
        }
      }
    } catch (error) {
      AppLog.e('Google 登入失敗: $error');
    }
    return null;
  }

  Future<LoginResponse?> signInWithApple() async {
    try {
      final credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        webAuthenticationOptions: WebAuthenticationOptions(
          clientId: 'com.clockworkorange.haohsing.service',
          redirectUri: Uri.parse('https://service.cloud-nest.com/LoginAPI/DoAppleLogin'),
        ),
      );

      final userIdentifier = credential.userIdentifier;
      final email = credential.email;
      final fullName = credential.givenName != null && credential.familyName != null
          ? '${credential.givenName} ${credential.familyName}'
          : null;

      final authorizationCode = credential.authorizationCode;
      final identityToken = credential.identityToken;

      AppLog.v('User ID: $userIdentifier\n' +
          'Email: $email\n' +
          'Full Name: $fullName\n' +
          'Authorization Code: $authorizationCode\n' +
          'Identity Token: $identityToken');

      return await appleLogin(authorizationCode);
    } catch (e) {
      AppLog.e('Sign in with Apple failed: $e');
    }
    return null;
  }

  Future<LoginResponse?> appleLogin(String code) async {
    try {
      AppleLoginRequestParams appleLoginRequestParams = AppleLoginRequestParams(code: code);
      LoginResponse? loginResponse = await userApiManager.appleLogin(params: appleLoginRequestParams);

      if (loginResponse != null) {
        if (loginResponse.result != 0) {
          state = state.copyWith(loginResponse: loginResponse);
          return loginResponse;
        }
        LoginResponse? longtimeResponse = await userApiManager.longtime(token: loginResponse.token ?? "",
            loginType: loginResponse.loginType ?? "");
        state = state.copyWith(loginResponse: longtimeResponse);

        return longtimeResponse;
      }
      state = state.copyWith(loginResponse: loginResponse);
      return loginResponse;
    } catch (e, stackTrace) {
      AppLog.e("login Error：$e");
    }
    return null;
  }

  Future<LoginResponse?> longtime(String token, String loginType) async {
    try {
      // 判斷假 token，直接給對應資料
      if (token == '@@@user@@@') {
        state = state.copyWith(loginResponse: loginResponseUser);
        return loginResponseUser;
      }

      if (token == '@@@engineer@@@') {
        state = state.copyWith(loginResponse: loginResponseEngineer);
        return loginResponseEngineer;
      }

      LoginResponse? longtimeResponse = await userApiManager.longtime(token: token,
          loginType: loginType ?? "");
      state = state.copyWith(loginResponse: longtimeResponse);
      return longtimeResponse;
    } catch (e, stackTrace) {
      AppLog.e("longtime Error：$e");
    }
  }

  Future<bool> forgetPassword(String account) async {
    try {
      ForgetPasswordRequestBody forgetPasswordRequestBody = ForgetPasswordRequestBody(account: account);
      ForgetPasswordResponse? response = await userApiManager.forgetPassword(body: forgetPasswordRequestBody);
      if (response == null) {
        return false;
      } else if (response.result != 0) {
        return false;
      } else {
        return true;
      }
    } catch (e, stackTrace) {
      AppLog.e("longtime Error：$e");
    }
    return false;
  }

  Future<UserResponse?> getUserInfo() async {
    try {
      String token = state.loginResponse?.token ?? "";

      // 根據 token 回傳假資料
      if (token == '@@@user@@@') {
        state = state.copyWith(userResponse: userResponseUser);
        return userResponseUser;
      }

      if (token == '@@@engineer@@@') {
        state = state.copyWith(userResponse: userResponseEngineer);
        return userResponseEngineer;
      }

      UserResponse? userResponse = await userApiManager.getUserInfo(token: token);
      state = state.copyWith(userResponse: userResponse);

      return userResponse;
    } catch (e, stackTrace) {
      AppLog.e("user Error：$e");
    }
    return null;
  }

  Future<bool> changeUserName(String name) async {
    try {
      String token = state.loginResponse?.token ?? "";
      ChangeUserNameRequestBody changeUserNameRequestBody = ChangeUserNameRequestBody(name: name);
      bool response =
          await userApiManager.changeUserName(token: token, changeUserNameRequestBody: changeUserNameRequestBody);
      getUserInfo();
      return response;
    } catch (e, stackTrace) {
      AppLog.e("changeUserName Error：$e");
    }
    return false;
  }

  Future<bool> changeUserPhone(String phone) async {
    try {
      String token = state.loginResponse?.token ?? "";
      ChangeUserPhoneRequestBody changeUserPhoneRequestBody = ChangeUserPhoneRequestBody(tel: phone);
      bool response =
          await userApiManager.changeUserPhone(token: token, changeUserPhoneRequestBody: changeUserPhoneRequestBody);
      getUserInfo();
      return response;
    } catch (e, stackTrace) {
      AppLog.e("changeUserPhone Error：$e");
    }
    return false;
  }

  Future<bool> changePassword({required String newPassword, required String password}) async {
    try {
      String token = state.loginResponse?.token ?? "";
      ChangePasswordRequestBody changePasswordRequestBody =
          ChangePasswordRequestBody(newPassword: newPassword, password: password);
      bool response =
          await userApiManager.changePassword(token: token, changePasswordRequestBody: changePasswordRequestBody);
      getUserInfo();
      return response;
    } catch (e, stackTrace) {
      AppLog.e("changeUserPhone Error：$e");
    }
    return false;
  }

  Future<bool> changeUserRegion({required String city, required String region}) async {
    try {
      String token = state.loginResponse?.token ?? "";
      ChangeRegionRequestBody changeRegionRequestBody = ChangeRegionRequestBody(city: city, region: region);
      bool response =
          await userApiManager.changeUserRegion(token: token, changeRegionRequestBody: changeRegionRequestBody);
      getUserInfo();
      return response;
    } catch (e, stackTrace) {
      AppLog.e("changeUserPhone Error：$e");
    }
    return false;
  }

  Future<bool> isUserExist({required String account}) async {
    try {
      UserExistRequestParams userExistRequestParams = UserExistRequestParams(account: account);
      bool response = await userApiManager.isUserExist(userExistRequestParams: userExistRequestParams);
      return response;
    } catch (e, stackTrace) {
      AppLog.e("isUserExist Error：$e");
    }
    return false;
  }

  Future<UserAddResponse?> userAdd({required String account, required String password}) async {
    try {
      UserAddRequestBody userAddRequestBody = UserAddRequestBody(account: account, secret: password);
      UserAddResponse? response = await userApiManager.userAdd(userAddRequestBody: userAddRequestBody);
      return response;
    } catch (e, stackTrace) {
      AppLog.e("userAdd Error：$e");
    }
    return null;
  }

  Future<String> updateAvatar({required File avatarImage}) async {
    try {
      String token = state.loginResponse?.token ?? "";

      String response = await userApiManager.updateAvatar(token: token, avatarImage: avatarImage);
      getUserInfo();
      return response;
    } catch (e, stackTrace) {
      AppLog.e("updateAvatar Error：$e");
    }
    return '';
  }

  Future<ResendActiveMailResponse?> resendActiveMail({required String account}) async {
    try {
      ResendActiveMailRequestParams params = ResendActiveMailRequestParams(account: account);

      ResendActiveMailResponse? response = await userApiManager.resendActiveMail(params: params);
      return response;
    } catch (e, stackTrace) {
      AppLog.e("resendActiveMail Error：$e");
      return null;
    }
  }

  Future<DeleteAccountResponse?> deleteAccount({required String account}) async {
    try {
      String token = state.loginResponse?.token ?? "";
      DeleteAccountResponse? response = await userApiManager.deleteAccount(token: token, account: account);
      return response;
    } catch (e, stackTrace) {
      AppLog.e("deleteAccount Error：$e");
      return null;
    }
  }

  Future<bool> sentFcmToken() async {
    try {
      String? fcmToken = await FirebaseMessaging.instance.getToken();
      String token = state.loginResponse?.token ?? "";
      bool response = await userApiManager.sentFcmToken(token: token, fcmToken: fcmToken!);
      return response;
    } catch (e, stackTrace) {
      AppLog.e("sentFcmToken Error：$e");
      return false;
    }
  }

  void logout() async {
    SharedPreferencesHelper.instance.saveToken("");
    SharedPreferencesHelper.instance.saveLoginType("");
    fcmSubscription?.cancel();

    // 清除所有本地排隊的通知
    await FlutterLocalNotificationsPlugin().cancelAll();
  }
}
