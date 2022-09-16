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
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Theme.of(context).colorScheme.primary,
                          blurRadius: 20),
                    ]),
                    child: Card(
                      color: Theme.of(context).backgroundColor,
                      child: SizedBox(
                        height: 470,
                        width: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Ink.image(
                                image:
                                    const AssetImage('images/wojak_studio.png'),
                                height: 220,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                '- Now I just have to wait...',
                                style: Theme.of(context).textTheme.caption,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Initial investment:',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              Text(
                                '${rektometerModel.initialValue.toStringAsFixed(2)}\$',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Current value:',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              Text(
                                '${rektometerModel.value.toStringAsFixed(2)}\$',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'ROI:',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              Text(
                                '${rektometerModel.roi.toStringAsFixed(2)}%',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .apply(
                                        color: rektometerModel.roi < 0
                                            ? Colors.red[700]
                                            : Colors.green[700]),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
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
