import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rektometer/app/add/add_token_page.dart';
import 'package:rektometer/app/portfolio/cubit/portfolio_cubit.dart';
import 'package:rektometer/data/remote_data_sources/portfolio_remote_data_source.dart';
import 'package:rektometer/models/tracker_model.dart';
import 'package:rektometer/repositories/portfolio_repository.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({
    Key? key,
  }) : super(key: key);

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) => const AddTokenPage()),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Your Portfolio'),
      ),
      body: BlocProvider(
        create: (context) =>
            PortfolioCubit(PortfolioRepository(PortfolioRemoteDataSource()))
              ..showPortfolioTokens(),
        child: BlocBuilder<PortfolioCubit, PortfolioState>(
          builder: (context, state) {
            final trackerModels = state.trackerModels;
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state.errorMessage.isNotEmpty) {
              return Center(
                child: Text('occured ${state.errorMessage}'),
              );
            }
            return ListView(
              children: [
                for (final trackerModel in trackerModels) ...[
                  PortfolioWidget(trackerModel)
                ]
              ],
            );
          },
        ),
      ),
    );
  }
}

class PortfolioWidget extends StatelessWidget {
  const PortfolioWidget(
    this.trackerModel, {
    Key? key,
  }) : super(key: key);

  final TrackerModel trackerModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 3),
      child: Container(
        color: Colors.black12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 35,
              child: Image.network(trackerModel.image),
            ),
            Container(
              height: 35,
              child: Text(trackerModel.name),
            ),
            Container(
              height: 35,
              child: Text(trackerModel.price.toString()),
            ),
            Container(
              height: 35,
              child: Text(trackerModel.priceChange.toString()),
            ),
            Container(
              height: 35,
              child: Text(trackerModel.volume.toString()),
            ),
            Container(
              height: 35,
              child: Text(trackerModel.value.toString()),
            ),
          ],
        ),
      ),
    );
  }
}
