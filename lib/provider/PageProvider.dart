import 'package:flutter/cupertino.dart';
import 'package:haohsing_flutter/utils/ToastHelper.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PageState {
  final bool isLoading;
  final String? errorMessage;
  final bool isCancellable;
  final bool isCancelled;

  PageState({
    this.isLoading = false,
    this.errorMessage,
    this.isCancellable = false,
    this.isCancelled = false,
  });

  PageState copyWith({
    bool? isLoading,
    String? errorMessage,
    bool? isCancellable,
    bool? isCancelled,
  }) {
    return PageState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      isCancellable: isCancellable ?? this.isCancellable,
      isCancelled: isCancelled ?? this.isCancelled,
    );
  }
}

class PageNotifier extends StateNotifier<PageState> {
  PageNotifier() : super(PageState());

  void showLoading({bool cancellable = false}) {
    state = state.copyWith(isLoading: true, isCancellable: cancellable, isCancelled: false);
  }

  void hideLoading() {
    state = state.copyWith(isLoading: false);
  }

  void cancelLoading() {
    state = state.copyWith(isLoading: false, isCancelled: true);
  }

  void showError(String message) {
    state = state.copyWith(errorMessage: message);
  }
  void showToastIfError(BuildContext context) {
    if (state.errorMessage != null) {
      showErrorToast(context: context, text: state.errorMessage!);
      state = state.copyWith(errorMessage: null);
    }
  }

  Future<void> hideError() async {
    state = state.copyWith(errorMessage: null);
  }
}

final pageProvider = StateNotifierProvider<PageNotifier, PageState>((ref) {
  return PageNotifier();
});
