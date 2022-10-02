part of 'rektometer_cubit.dart';

@immutable
class RektometerState {
  final RektometerModel? rektometerModel;
  final Status status;
  final String? errorMessage;

  const RektometerState({
    required this.rektometerModel,
    required this.status,
    required this.errorMessage,
  });
}
