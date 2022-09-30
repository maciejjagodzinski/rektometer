import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'root_state.dart';

class RootCubit extends Cubit<RootState> {
  RootCubit()
      : super(const RootState(
          user: null,
          isLoading: false,
          errorMessage: '',
          isCreatingAccount: false,
        ));

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    emit(
      const RootState(
        user: null,
        isLoading: true,
        errorMessage: '',
        isCreatingAccount: false,
      ),
    );

    _streamSubscription =
        FirebaseAuth.instance.authStateChanges().listen((user) {
      emit(
        RootState(
          user: user,
          isLoading: false,
          errorMessage: '',
          isCreatingAccount: false,
        ),
      );
    })
          ..onError((error) {
            emit(
              RootState(
                user: null,
                isLoading: false,
                errorMessage: error.toString(),
                isCreatingAccount: false,
              ),
            );
          });
  }

  Future<void> createUserState() async {
    emit(
      const RootState(
        user: null,
        isCreatingAccount: true,
        isLoading: false,
        errorMessage: '',
      ),
    );
  }

  Future<void> signInUserState() async {
    emit(
      const RootState(
        user: null,
        isCreatingAccount: false,
        isLoading: false,
        errorMessage: '',
      ),
    );
  }

  Future<void> signInWithEmailAndPassword(
    String emailController,
    String passwordController,
  ) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController,
        password: passwordController,
      );
    } on FirebaseAuthException catch (error) {
      emit(RootState(
        user: null,
        isLoading: false,
        errorMessage: error.toString(),
        isCreatingAccount: false,
      ));
    }
  }

  Future<void> createUserWithEmailAndPassword(
    String emailController,
    String passwordController,
  ) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController,
        password: passwordController,
      );
    } on FirebaseAuthException catch (error) {
      emit(RootState(
        user: null,
        isLoading: false,
        errorMessage: error.toString(),
        isCreatingAccount: false,
      ));
    }
  }

  Future<void> signOut() async {
    FirebaseAuth.instance.signOut();
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
