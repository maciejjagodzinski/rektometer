import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:rektometer/app/core/enums.dart';

part 'root_state.dart';

class RootCubit extends Cubit<RootState> {
  RootCubit()
      : super(const RootState(
          user: null,
          status: Status.initial,
          isCreatingAccount: false,
          errorMessage: null,
        ));

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    emit(
      const RootState(
        user: null,
        status: Status.loading,
        isCreatingAccount: false,
        errorMessage: null,
      ),
    );

    _streamSubscription =
        FirebaseAuth.instance.authStateChanges().listen((user) {
      emit(
        RootState(
          user: user,
          status: Status.success,
          isCreatingAccount: false,
          errorMessage: null,
        ),
      );
    })
          ..onError((error) {
            emit(
              RootState(
                user: null,
                status: Status.error,
                isCreatingAccount: false,
                errorMessage: error.toString(),
              ),
            );
          });
  }

  Future<void> createUserState() async {
    emit(
      const RootState(
        user: null,
        isCreatingAccount: true,
        status: Status.success,
        errorMessage: null,
      ),
    );
  }

  Future<void> signInUserState() async {
    emit(
      const RootState(
        user: null,
        isCreatingAccount: false,
        status: Status.success,
        errorMessage: null,
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
        status: Status.success,
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
        status: Status.success,
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
