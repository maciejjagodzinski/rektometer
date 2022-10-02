import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rektometer/features/cubit/root_cubit.dart';

class MyAccountPage extends StatefulWidget {
  const MyAccountPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyAccountPage> createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Your account'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You are logged in as ${context.read<RootCubit>().state.user!.email}',
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<RootCubit>().signOut();
                },
                child: const Text('Sign Out'),
              )
            ],
          ),
        ));
  }
}
