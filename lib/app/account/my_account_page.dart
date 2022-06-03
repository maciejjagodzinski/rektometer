import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rektometer/app/cubit/root_cubit.dart';
import 'package:rektometer/app/portfolio/portfolio_page.dart';
import 'package:rektometer/app/rektometer/rektometer_page.dart';

class MyAccountPage extends StatefulWidget {
  const MyAccountPage({
    Key? key,
    required this.email,
  }) : super(key: key);

  final String email;

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
      body: Builder(builder: (context) {
        if (currentIndex == 1) {
          return const PortfolioPage();
        }
        if (currentIndex == 2) {
          return const RektometerPage();
        }
        if (currentIndex == 0) {
          return MyAccountPage(
            email: widget.user.email,
          );
        }
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('You are logged in as $email'),
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
        );
      }),
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
