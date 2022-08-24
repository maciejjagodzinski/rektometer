import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rektometer/app/account/my_account_page.dart';
import 'package:rektometer/app/portfolio/portfolio_page.dart';
import 'package:rektometer/app/rektometer/cubit/cubit/rektometer_cubit.dart';
import 'package:rektometer/data/remote_data_sources/portfolio_remote_data_source.dart';
import 'package:rektometer/repositories/portfolio_repository.dart';

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
          body: BlocProvider(
            create: (context) => RektometerCubit(
                PortfolioRepository(PortfolioRemoteDataSource()))
              ..showRektometer(),
            child: BlocBuilder<RektometerCubit, RektometerState>(
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
                final rektometerModel = state.rektometerModel!;
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('rektometer'),
                      Text(
                        'initial value: ${rektometerModel.initialValue.toString()}',
                      ),
                      Text(
                        'current value: ${rektometerModel.value.toString()}',
                      ),
                      Text(
                        'ROI: ${rektometerModel.roi.toString()}',
                      )
                    ],
                  ),
                );
              },
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
