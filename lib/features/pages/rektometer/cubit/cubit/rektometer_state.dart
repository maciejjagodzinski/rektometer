part of 'rektometer_cubit.dart';

@freezed
class RektometerState with _$RektometerState {
  const factory RektometerState({
    required RektometerModel? rektometerModel,
    required Status status,
    required String? errorMessage,
  }) = _RektometerState;
}
