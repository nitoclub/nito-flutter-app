import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_page_state.freezed.dart';

@freezed
class TopPageState with _$TopPageState {
  const factory TopPageState({
    @Default(false) bool isLoading,
  }) = _TopPageState;
}
