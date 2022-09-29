import 'package:rektometer/data/remote_data_sources/rektometer_remote_data_source.dart';
import 'package:rektometer/repositories/rektometer_repository.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rektometer/app/account/my_account_page.dart';
import 'package:rektometer/app/portfolio/portfolio_page.dart';
import 'package:rektometer/app/rektometer/cubit/cubit/rektometer_cubit.dart';

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
                RektometerRepository(RektometerRemoteDataSource()))
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
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Theme.of(context).colorScheme.primary,
                          blurRadius: 8,
                          spreadRadius: 0),
                    ]),
                    child: Card(
                      color: Theme.of(context).backgroundColor,
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: SfRadialGauge(axes: [
                                  RadialAxis(
                                    minimum: -100,
                                    maximum: 200,
                                    interval: 50,
                                    minorTicksPerInterval: 4,
                                    majorTickStyle: MajorTickStyle(
                                      length: 10,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface
                                          .withOpacity(0.6),
                                    ),
                                    axisLineStyle: const AxisLineStyle(
                                      thickness: 20,
                                    ),
                                    showLastLabel: true,
                                    annotations: [
                                      GaugeAnnotation(
                                          widget: Text(
                                            '${rektometerModel.roi.toStringAsFixed(2)}%',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6!
                                                .apply(
                                                    color: rektometerModel.roi <
                                                            0
                                                        ? Colors.red[700]
                                                        : Colors.green[700]),
                                          ),
                                          positionFactor: 0.8,
                                          angle: 90)
                                    ],
                                    ranges: [
                                      GaugeRange(
                                        startValue: -100,
                                        endValue: 200,
                                        startWidth: 20,
                                        endWidth: 20,
                                        gradient: const SweepGradient(colors: [
                                          Color(0xFFB71C1C),
                                          Color(0xFFFFA726),
                                          Color(0xFF1B5E20),
                                        ], stops: [
                                          0.1,
                                          0.25,
                                          0.85,
                                        ]),
                                      ),
                                    ],
                                    pointers: [
                                      NeedlePointer(
                                        value: rektometerModel.roi,
                                        knobStyle:
                                            KnobStyle(color: Colors.grey[700]),
                                        enableAnimation: true,
                                        animationType: AnimationType.ease,
                                        animationDuration: 1500,
                                        needleColor: Colors.grey[400],
                                        needleLength: 0.8,
                                        needleStartWidth: 0.8,
                                        needleEndWidth: 5,
                                      )
                                    ],
                                  )
                                ]),
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
                                '${rektometerModel.currentValue.toStringAsFixed(2)}\$',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Profit / Loss:',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              Text(
                                '${(rektometerModel.currentValue - rektometerModel.initialValue).toStringAsFixed(2)}\$',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .apply(
                                        color: rektometerModel.roi < 0
                                            ? Colors.red[700]
                                            : Colors.green[700]),
                              )
                            ]),
                      ),
                    ),
                  ),
                ),
              );
            }),
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
