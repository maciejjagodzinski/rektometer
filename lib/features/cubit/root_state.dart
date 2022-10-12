part of 'root_cubit.dart';

@freezed
class RootState with _$RootState {
  const factory RootState({
    required User? user,
    required Status status,
    required bool isCreatingAccount,
    required String? errorMessage,
  }) = _RootState;
}
