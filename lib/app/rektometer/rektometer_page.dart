import 'package:flutter/material.dart';
import 'package:rektometer/app/account/my_account_page.dart';
import 'package:rektometer/app/portfolio/portfolio_page.dart';

class RektometerPage extends StatefulWidget {
  const RektometerPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RektometerPage> createState() => _RektometerPageState();
}

class _RektometerPageState extends State<RektometerPage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        if (currentIndex == 1) {
          return const PortfolioPage();
        }
        if (currentIndex == 0) {
          return const MyAccountPage();
        }
        return Scaffold(
          appBar: AppBar(
            title: const Text('REKT-O-METER'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('rektometer'),
              ],
            ),
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
