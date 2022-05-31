import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
                decoration:
                    const InputDecoration(hintText: 'Enter your passsword'),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () async {
                  if (isCreatingAccount == true) {
                    try {
                      await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                        email: widget.emailController.text,
                        password: widget.passwordController.text,
                      );
                    } catch (error) {
                      setState(() {
                        errorMessage = error.toString();
                      });
                      final snackBar = SnackBar(
                        content:
                            Text('User registration got REKT. $errorMessage'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  } else {
                    //login
                    try {
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: widget.emailController.text,
                        password: widget.passwordController.text,
                      );
                    } catch (error) {
                      setState(() {
                        errorMessage = error.toString();
                      });
                      final snackBar = SnackBar(
                        content: Text('Login attempt got REKT. $errorMessage'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  }
                },
                child: Text(isCreatingAccount == true ? 'Register' : 'Log In'),
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
  }
}
