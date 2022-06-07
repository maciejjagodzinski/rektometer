import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rektometer/app/login/cubit/login_cubit.dart';

class LoginPage extends StatefulWidget {
  LoginPage({
    Key? key,
  }) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          if (state.errorMessage.isNotEmpty) {
            return Center(
              child: Text('Something got REKT...${state.errorMessage}'),
            );
          }
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Scaffold(
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(state.isCreatingAccount == true
                        ? 'Create account'
                        : 'Please sign in'),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: widget.emailController,
                      decoration:
                          const InputDecoration(hintText: 'Enter your e-mail'),
                    ),
                    TextField(
                      controller: widget.passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: 'Enter your passsword'),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        if (state.isCreatingAccount == false) {
                          await context
                              .read<LoginCubit>()
                              .signInWithEmailAndPassword(
                                  widget.emailController.text,
                                  widget.passwordController.text);
                        } else {
                          await context
                              .read<LoginCubit>()
                              .createUserWithEmailAndPassword(
                                  widget.emailController.text,
                                  widget.passwordController.text);
                        }
                      },
                      child:
                          Text(state.isCreatingAccount ? 'Register' : 'Log In'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    if (state.isCreatingAccount == false) ...[
                      TextButton(
                        onPressed: () {
                          context.read<LoginCubit>().createUserState();
                        },
                        child: const Text('Create Account'),
                      ),
                    ],
                    if (state.isCreatingAccount == true) ...[
                      TextButton(
                        onPressed: () {
                          context.read<LoginCubit>().signInUserState();
                        },
                        child: const Text('Go back to login page'),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
