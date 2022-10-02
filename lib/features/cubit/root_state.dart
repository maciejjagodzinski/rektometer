part of 'root_cubit.dart';

@immutable
class RootState {
  final User? user;
  final bool isLoading;
  final String errorMessage;
  final bool isCreatingAccount;

  const RootState({
    required this.user,
    required this.isLoading,
    required this.errorMessage,
    required this.isCreatingAccount,
  });
}
