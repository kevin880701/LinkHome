import 'package:flutter_riverpod/flutter_riverpod.dart';

class UpdateState {
  DateTime? deviceUpdated;
  DateTime? placeUpdated;
  DateTime? userUpdated;
  DateTime? maintenanceUpdated;
  DateTime? msgUpdated;

  UpdateState({
    this.deviceUpdated,
    this.placeUpdated,
    this.userUpdated,
    this.maintenanceUpdated,
    this.msgUpdated,
  });

  UpdateState copyWith({
    DateTime? deviceUpdated,
    DateTime? placeUpdated,
    DateTime? userUpdated,
    DateTime? maintenanceUpdated,
    DateTime? msgUpdated,
  }) {
    return UpdateState(
      deviceUpdated: deviceUpdated ?? this.deviceUpdated,
      placeUpdated: placeUpdated ?? this.placeUpdated,
      userUpdated: userUpdated ?? this.userUpdated,
      maintenanceUpdated: maintenanceUpdated ?? this.maintenanceUpdated,
      msgUpdated: msgUpdated ?? this.msgUpdated,
    );
  }
}

final updateStateProvider = StateNotifierProvider<UpdateStateNotifier, UpdateState>((ref) {
  return UpdateStateNotifier();
});

class UpdateStateNotifier extends StateNotifier<UpdateState> {
  UpdateStateNotifier() : super(UpdateState());

  DateTime deviceUpdated() {
    state = state.copyWith(deviceUpdated: DateTime.now());
    return DateTime.now();
  }

  Future<DateTime> placeUpdated() async {
    state = state.copyWith(placeUpdated: DateTime.now());
    return DateTime.now();
  }

  DateTime userUpdated() {
    state = state.copyWith(userUpdated: DateTime.now());
    return DateTime.now();
  }

  DateTime maintenanceUpdated() {
    state = state.copyWith(maintenanceUpdated: DateTime.now());
    return DateTime.now();
  }

  DateTime msgUpdated() {
    state = state.copyWith(msgUpdated: DateTime.now());
    return DateTime.now();
  }

  DateTime resetUpdates() {
    state = UpdateState();
    return DateTime.now();
  }
}
