import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rektometer/app/add/add_token_page.dart';
import 'package:rektometer/app/portfolio/cubit/portfolio_cubit.dart';
import 'package:rektometer/data/remote_data_sources/investments_remote_data_source.dart';
import 'package:rektometer/models/investment_model.dart';
import 'package:rektometer/repositories/investments_repository.dart';

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
            PortfolioCubit(InvestmentsRepository(InvestmentsRemoteDataSource()))
              ..portfolioStart(),
        child: BlocBuilder<PortfolioCubit, PortfolioState>(
          builder: (context, state) {
            final investmentModels = state.investments;
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
                for (final investmentModel in investmentModels) ...[
                  InvestmentWidget(investmentModel)
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}

class InvestmentWidget extends StatelessWidget {
  const InvestmentWidget(
    this.investmentModel, {
    Key? key,
  }) : super(key: key);

  final InvestmentModel investmentModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(investmentModel.name),
      ],
    );
  }
}
