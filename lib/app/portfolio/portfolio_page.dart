import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rektometer/app/portfolio/cubit/portfolio_cubit.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio'),
      ),
      body: BlocProvider(
        create: (context) => PortfolioCubit()..start(),
        child: BlocBuilder<PortfolioCubit, PortfolioState>(
          builder: (context, state) {
            if (state.errorMessage.isNotEmpty) {
              return Text('Unexpected REKT ${state.errorMessage.toString()}');
            }
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            final documents = state.documents;

            return ListView(
              children: [
                for (final document in documents) ...[
                  InvestmentWidget(document['name'])
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
    this.name, {
    Key? key,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2.0),
      padding: const EdgeInsets.all(15.0),
      color: Colors.blueGrey.shade600,
      child: Text(
        name,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
    );
  }
}
