part of 'root_cubit.dart';

@immutable
class RootState {
  final User? user;
  final Status status;
  final bool isCreatingAccount;
  final String? errorMessage;

  const RootState({
    required this.user,
    required this.status,
    required this.isCreatingAccount,
    required this.errorMessage,
  });
}
