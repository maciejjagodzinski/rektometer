import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rektometer/app/add/add_token_page.dart';
import 'package:rektometer/app/portfolio/cubit/portfolio_cubit.dart';
import 'package:rektometer/data/remote_data_sources/portfolio_remote_data_source.dart';
import 'package:rektometer/models/portfolio_model.dart';
import 'package:rektometer/repositories/portfolio_repository.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({
    Key? key,
  }) : super(key: key);

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
              ..portfolioStart(),
        child: BlocBuilder<PortfolioCubit, PortfolioState>(
          builder: (context, state) {
            final portfolioModels = state.tokensTracked;
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
                for (final portfolioModel in portfolioModels) ...[
                  PortfolioWidget(portfolioModel)
                ],
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
    this.portfolioModel, {
    Key? key,
  }) : super(key: key);

  final PortfolioModel portfolioModel;

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
              height: 40,
              child: Text('B'),
            ),
            Container(
              height: 35,
              child: Text(portfolioModel.tokenId),
            ),
            Container(
              height: 35,
              child: Text('40000\$'),
            ),
            Container(
              height: 35,
              child: Text('7.4%'),
            ),
            Container(
              height: 35,
              child: Text('3.0'),
            ),
            Container(
              height: 35,
              child: Text('120000\$'),
            ),
          ],
        ),
      ),
    );
  }
}
