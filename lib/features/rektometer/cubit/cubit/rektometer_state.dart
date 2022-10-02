part of 'rektometer_cubit.dart';

@immutable
class RektometerState {
  final RektometerModel? rektometerModel;
  final bool isLoading;
  final String errorMessage;

  const RektometerState({
    required this.rektometerModel,
    required this.isLoading,
    required this.errorMessage,
  });
}
