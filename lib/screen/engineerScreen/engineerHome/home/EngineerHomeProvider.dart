import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/response/maintenance/engineerWorkOrder/EngineerWorkOrderResponse.dart';
import 'package:haohsing_flutter/net/MaintenanceApiManager.dart';
import 'package:haohsing_flutter/net/PlaceApiManager.dart';
import 'package:haohsing_flutter/provider/UpdateStateProvider.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';
import 'package:intl/intl.dart';

class EngineerHomeState {
  final Map<String, List<EngineerWorkOrderResponse>> monthWorkOrders;
  final List<EngineerWorkOrderResponse> dayWorkOrders;

  EngineerHomeState({
    this.monthWorkOrders = const {},
    this.dayWorkOrders = const [],
  });

  EngineerHomeState copyWith({
    Map<String, List<EngineerWorkOrderResponse>>? monthWorkOrders,
    List<EngineerWorkOrderResponse>? dayWorkOrders,
  }) {
    return EngineerHomeState(
      monthWorkOrders: monthWorkOrders ?? this.monthWorkOrders,
      dayWorkOrders: List.unmodifiable(dayWorkOrders ?? this.dayWorkOrders),
    );
  }
}

final engineerHomeProvider = StateNotifierProvider.autoDispose<EngineerHomeNotifier, EngineerHomeState>((ref) {
  return EngineerHomeNotifier(ref);
});

class EngineerHomeNotifier extends StateNotifier<EngineerHomeState> {
  EngineerHomeNotifier(this.ref) : super(EngineerHomeState()) {
    token = ref.read(userProvider).loginResponse?.token ?? "";
    ref.listen<UpdateState>(updateStateProvider, (previous, next) {
      if ((previous?.deviceUpdated != next.deviceUpdated) || (previous?.placeUpdated != next.placeUpdated)) {
      }
    });
  }

  final Ref ref;
  late String token = "";
  final MaintenanceApiManager maintenanceApiManager = MaintenanceApiManager.instance;
  final PlaceApiManager placeApiManager = PlaceApiManager.instance;

  Future<List<EngineerWorkOrderResponse>> getEngineerWorkOrder({required int year, required int month, int? day}) async {
    try {
      List<EngineerWorkOrderResponse> response = await maintenanceApiManager.getEngineerWorkOrder(token, year: year, month: month, day: day);
      if(day == null){
        // 按日期分組工單
        final monthWorkOrders = groupBy<EngineerWorkOrderResponse, String>(
            response, (order) => DateFormat('yyyy-MM-dd').format(DateTime.parse(order.appointedDatetime)));
        state = state.copyWith(monthWorkOrders: monthWorkOrders);
      }else{
        state = state.copyWith(dayWorkOrders: response);
      }
      return response;
    } catch (e, stackTrace) {
      AppLog.e("getEngineerWorkOrder Error：$e");
    }
    return [];
  }
}
