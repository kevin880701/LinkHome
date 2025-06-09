import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/request/user/changeRegion/ChangeRegionRequestBody.dart';
import 'package:haohsing_flutter/model/request/user/changeUserName/ChangeUserNameRequestBody.dart';
import 'package:haohsing_flutter/model/request/user/changeUserPhone/ChangeUserPhoneRequestBody.dart';
import 'package:haohsing_flutter/model/response/zipCode/getRegions/GetRegionsResponse.dart';
import 'package:haohsing_flutter/net/UserApiManager.dart';
import 'package:haohsing_flutter/net/ZipCodeApiManager.dart';
import 'package:haohsing_flutter/provider/UpdateStateProvider.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/route/AppRouter.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';

class UserInformationState {
  final List<String> cities;
  final List<String> regions;

  UserInformationState({
    this.cities = const [],
    this.regions = const [],
  });

  UserInformationState copyWith({
    List<String>? cities,
    List<String>? regions,
  }) {
    return UserInformationState(
      cities: List.unmodifiable(cities ?? this.cities),
      regions: List.unmodifiable(regions ?? this.regions),
    );
  }
}

final userInformationProvider = StateNotifierProvider.autoDispose<UserInformationNotifier, UserInformationState>((ref) {
  return UserInformationNotifier(ref);
});

class UserInformationNotifier extends StateNotifier<UserInformationState> {
  UserInformationNotifier(this.ref) : super(UserInformationState()) {
    token = ref.read(userProvider).loginResponse?.token ?? "";
    ref.listen<UpdateState>(updateStateProvider, (previous, next) {
      if ((previous?.userUpdated != next.userUpdated)) {
      }
    });
  }

  final Ref ref;
  late String token = "";
  final UserApiManager userApiManager = UserApiManager.instance;
  final ZipCodeApiManager zipCodeApiManager = ZipCodeApiManager.instance;

  Future<List<String>> getCities() async {
    try {
      List<String> citiesResponse = await zipCodeApiManager.getCities();
      state = state.copyWith(cities: (citiesResponse != null)?citiesResponse:[]);
      return citiesResponse;
    } catch (e, stackTrace) {
      AppLog.e("getCities Error：$e");
      return [];
    }
  }

  Future<GetRegionsResponse?> getRegions({required String countyName,}) async {
    try {
      GetRegionsResponse? regionsResponse = await zipCodeApiManager.getRegions(countyName: countyName);
      state = state.copyWith(regions: (regionsResponse != null)?regionsResponse.regions:[]);
      return regionsResponse;
    } catch (e, stackTrace) {
      AppLog.e("getRegions Error：$e");
      return null;
    }
  }

  Future<bool> changeUserName(String name) async {
    try {
      ChangeUserNameRequestBody changeUserNameRequestBody = ChangeUserNameRequestBody(name: name);
      bool response =
      await userApiManager.changeUserName(token: token, changeUserNameRequestBody: changeUserNameRequestBody);
      return response;
    } catch (e, stackTrace) {
      AppLog.e("changeUserName Error：$e");
    }
    return false;
  }

  Future<bool> changeUserPhone(String phone) async {
    try {
      ChangeUserPhoneRequestBody changeUserPhoneRequestBody = ChangeUserPhoneRequestBody(tel: phone);
      bool response =
      await userApiManager.changeUserPhone(token: token, changeUserPhoneRequestBody: changeUserPhoneRequestBody);
      return response;
    } catch (e, stackTrace) {
      AppLog.e("changeUserPhone Error：$e");
    }
    return false;
  }

  Future<bool> changeUserRegion({required String city, required String region}) async {
    try {
      ChangeRegionRequestBody changeRegionRequestBody = ChangeRegionRequestBody(city: city, region: region);
      bool response =
      await userApiManager.changeUserRegion(token: token, changeRegionRequestBody: changeRegionRequestBody);
      ref.read(updateStateProvider.notifier).userUpdated();
      return response;
    } catch (e, stackTrace) {
      AppLog.e("changeUserRegion Error：$e");
    }
    return false;
  }
}


