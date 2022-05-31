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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('You are not logged in'),
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
                },
                child: const Text('Log In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
