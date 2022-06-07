import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit()
      : super(const LoginState(
          user: null,
          isCreatingAccount: false,
          isLoading: false,
          errorMessage: '',
        ));

  Future<void> createUserState() async {
    emit(
      const LoginState(
        user: null,
        isCreatingAccount: true,
        isLoading: false,
        errorMessage: '',
      ),
    );
  }

  Future<void> signInUserState() async {
    emit(
      const LoginState(
        user: null,
        isCreatingAccount: false,
        isLoading: false,
        errorMessage: '',
      ),
    );
  }

  Future<void> signInWithEmailAndPassword(
      String emailController, String passwordController) async {
    FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController, password: passwordController);
  }

  Future<void> createUserWithEmailAndPassword(
      String emailController, String passwordController) async {
    FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController, password: passwordController);
  }
}
