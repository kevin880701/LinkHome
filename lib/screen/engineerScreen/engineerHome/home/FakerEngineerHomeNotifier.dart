import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:collection/collection.dart';
import 'package:haohsing_flutter/model/response/maintenance/engineerWorkOrder/EngineerWorkOrderResponse.dart';

import '../../../../data/EngineerFakerData.dart';
import 'BaseEngineerHomeNotifier.dart';

final fakerEngineerHomeProvider = StateNotifierProvider.autoDispose<FakerEngineerHomeNotifier, EngineerHomeState>(
      (ref) => FakerEngineerHomeNotifier(),
);

class FakerEngineerHomeNotifier extends BaseEngineerHomeNotifier {
  FakerEngineerHomeNotifier() : super();

  @override
  Future<List<EngineerWorkOrderResponse>> getEngineerWorkOrder({
    required int year,
    required int month,
    int? day,
  }) async {
    print('＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝');
    print('year: $year, month: $month, day: $day');
    print('＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝');
    // 1. 先過濾出符合年月的工單
    final filtered = mockEngineerWorkOrderList.where((order) {
      final dt = DateTime.parse(order.appointedDatetime);
      if (dt.year != year || dt.month != month) return false;
      if (day != null && dt.day != day) return false;
      return true;
    }).toList();

    // 2. 根據需求更新 State
    if (day == null) {
      final monthWorkOrders = groupBy<EngineerWorkOrderResponse, String>(
        filtered,
            (order) => DateFormat('yyyy-MM-dd').format(DateTime.parse(order.appointedDatetime)),
      );
      state = state.copyWith(monthWorkOrders: monthWorkOrders);
    } else {
      state = state.copyWith(dayWorkOrders: filtered);
    }

    print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
    print("${filtered.length}");
    print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
    return filtered;
  }
}
