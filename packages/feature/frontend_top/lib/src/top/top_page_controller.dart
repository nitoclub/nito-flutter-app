import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:feature_frontend_top/src/top/top_page_state.dart';

final topPageController =
    StateNotifierProvider<TopPageController, TopPageState>(
  (ref) => TopPageController(ref),
);

class TopPageController extends StateNotifier<TopPageState> {
  TopPageController(this.ref) : super(const TopPageState());

  final Ref ref;

  Future<void> login() async {
    state = state.copyWith(isLoading: true);
    state = state.copyWith(isLoading: false);
  }

  @override
  void dispose() {
    super.dispose();
  }
}
