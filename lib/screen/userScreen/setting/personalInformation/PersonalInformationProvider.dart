import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/response/zipCode/getRegions/GetRegionsResponse.dart';
import 'package:haohsing_flutter/net/ZipCodeApiManager.dart';
import 'package:haohsing_flutter/provider/UpdateStateProvider.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';

class PersonalInformationState {
  final List<String> cities;
  final List<String> regions;

  PersonalInformationState({
    this.cities = const [],
    this.regions = const [],
  });

  PersonalInformationState copyWith({
    List<String>? cities,
    List<String>? regions,
  }) {
    return PersonalInformationState(
      cities: List.unmodifiable(cities ?? this.cities),
      regions: List.unmodifiable(regions ?? this.regions),
    );
  }
}

final personalInformationProvider = StateNotifierProvider.autoDispose<PersonalInformationNotifier, PersonalInformationState>((ref) {
  return PersonalInformationNotifier(ref);
});

class PersonalInformationNotifier extends StateNotifier<PersonalInformationState> {
  PersonalInformationNotifier(this.ref) : super(PersonalInformationState()) {
    token = ref.read(userProvider).loginResponse?.token ?? "";
    ref.listen<UpdateState>(updateStateProvider, (previous, next) {
      if ((previous?.userUpdated != next.userUpdated)) {
      }
    });
  }

  final Ref ref;
  late String token = "";
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
      return regionsResponse;
    } catch (e, stackTrace) {
      AppLog.e("getRegions Error：$e");
      return null;
    }
  }
}


