import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/response/maintenance/engineerWorkOrder/EngineerWorkOrderResponse.dart';

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

abstract class BaseEngineerHomeNotifier extends StateNotifier<EngineerHomeState> {
  BaseEngineerHomeNotifier() : super(EngineerHomeState());

  Future<List<EngineerWorkOrderResponse>> getEngineerWorkOrder({required int year, required int month, int? day});
}
