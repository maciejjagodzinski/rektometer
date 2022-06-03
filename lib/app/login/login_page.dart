import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rektometer/app/cubit/root_cubit.dart';

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
  var errorMessage = '';
  var isCreatingAccount = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RootCubit(),
      child: BlocBuilder<RootCubit, RootState>(
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(isCreatingAccount == true
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
                        if (isCreatingAccount == true) {
                          try {
                            //registration
                            await context
                                .read<RootCubit>()
                                .createUserWithEmailAndPassword(
                                    widget.emailController.text,
                                    widget.passwordController.text);
                          } catch (error) {
                            setState(() {
                              errorMessage = error.toString();
                            });
                            final snackBar = SnackBar(
                              content: Text(
                                  'User registration got REKT. $errorMessage'),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                        } else {
                          //login
                          try {
                            await context
                                .read<RootCubit>()
                                .signInWithEmailAndPassword(
                                    widget.emailController.text,
                                    widget.passwordController.text);
                          } catch (error) {
                            setState(() {
                              errorMessage = error.toString();
                            });
                            final snackBar = SnackBar(
                              content: Text('Login attempt got REKT. '),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                        }
                      },
                      child: Text(
                          isCreatingAccount == true ? 'Register' : 'Log In'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    if (isCreatingAccount == false) ...[
                      TextButton(
                        onPressed: () {
                          setState(
                            () {
                              isCreatingAccount = true;
                            },
                          );
                        },
                        child: const Text('Create Account'),
                      ),
                    ],
                    if (isCreatingAccount == true) ...[
                      TextButton(
                        onPressed: () {
                          setState(
                            () {
                              isCreatingAccount = false;
                            },
                          );
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
