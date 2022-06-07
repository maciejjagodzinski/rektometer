part of 'login_cubit.dart';

@immutable
class LoginState {
  final User? user;
  final bool isCreatingAccount;
  final bool isLoading;
  final String errorMessage;

  const LoginState({
    required this.user,
    required this.isCreatingAccount,
    required this.isLoading,
    required this.errorMessage,
  });
}
