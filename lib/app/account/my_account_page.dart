import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rektometer/app/cubit/root_cubit.dart';

class MyAccountPage extends StatefulWidget {
  const MyAccountPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  State<MyAccountPage> createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  var currentIndex = 0;

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
            Text('You are logged in as ${widget.user.email}'),
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.currency_bitcoin),
            label: 'Portfolio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.speed),
            label: 'Rekt-O-Meter',
          ),
        ],
      ),
    );
  }
}
