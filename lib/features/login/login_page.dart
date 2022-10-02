import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rektometer/features/cubit/root_cubit.dart';

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
      create: (context) => RootCubit(),
      child: BlocBuilder<RootCubit, RootState>(
        builder: (context, state) {
          if (state.errorMessage.isNotEmpty) {
            return Center(
              child: Text('Something got REKT...${state.errorMessage}',
                  style: Theme.of(context).textTheme.headlineMedium),
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
                              .read<RootCubit>()
                              .signInWithEmailAndPassword(
                                  widget.emailController.text,
                                  widget.passwordController.text);
                        } else {
                          await context
                              .read<RootCubit>()
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
                          context.read<RootCubit>().createUserState();
                        },
                        child: const Text('Create Account'),
                      ),
                    ],
                    if (state.isCreatingAccount == true) ...[
                      TextButton(
                        onPressed: () {
                          context.read<RootCubit>().signInUserState();
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
