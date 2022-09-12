import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rektometer/app/add/add_token_page.dart';
import 'package:rektometer/app/portfolio/cubit/portfolio_cubit.dart';
import 'package:rektometer/data/remote_data_sources/portfolio_remote_data_source.dart';
import 'package:rektometer/details/pages/details_page.dart';
import 'package:rektometer/models/portfolio_item_model.dart';
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
              ..showPortfolio(),
        child: BlocBuilder<PortfolioCubit, PortfolioState>(
            builder: (context, state) {
          final portfolioItemModels = state.portfolioItemModels;

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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Theme.of(context)
                            .colorScheme
                            .onPrimary
                            .withOpacity(0.3),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(children: [
                      SizedBox(
                        width: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Name',
                                style: Theme.of(context).textTheme.caption),
                            Text('Symbol',
                                style: Theme.of(context).textTheme.caption),
                          ],
                        ),
                      ),
                      const SizedBox(width: 38),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Price',
                                style: Theme.of(context).textTheme.caption),
                            Text('24h',
                                style: Theme.of(context).textTheme.caption),
                          ]),
                      const Spacer(),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Value',
                                style: Theme.of(context).textTheme.caption),
                            Text('Volume',
                                style: Theme.of(context).textTheme.caption),
                          ]),
                    ]),
                  ),
                ),
              ),
              for (final portfolioItemModel in portfolioItemModels) ...[
                PortfolioWidget(portfolioItemModel)
              ]
            ],
          );
        }),
      ),
    );
  }
}

class PortfolioWidget extends StatelessWidget {
  const PortfolioWidget(
    this.portfolioItemModel, {
    Key? key,
  }) : super(key: key);

  final PortfolioItemModel portfolioItemModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: ((context) =>
                DetailsPage(portfolioItemModel: portfolioItemModel)),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 3),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.3),
              ),
            ),
          ),
          height: 60,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(children: [
            Image.network(
              portfolioItemModel.image,
              width: 30,
              height: 30,
            ),
            const SizedBox(width: 8),
            SizedBox(
              width: 90,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    portfolioItemModel.name.split(' ').first,
                  ),
                  Text(
                    portfolioItemModel.symbol.toUpperCase(),
                    style: TextStyle(
                        color: Theme.of(context)
                            .colorScheme
                            .onPrimary
                            .withOpacity(0.6)),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 30),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${portfolioItemModel.price.toStringAsFixed(2)}\$',
                  ),
                  Text(
                    '${portfolioItemModel.priceChange.toStringAsFixed(2)}%',
                    style: TextStyle(
                      color: portfolioItemModel.priceChange < 0
                          ? Colors.red[700]
                          : Colors.green[700],
                    ),
                  ),
                ]),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '${portfolioItemModel.value.toStringAsFixed(0)}\$',
                ),
                Text(
                  portfolioItemModel.volume.toStringAsFixed(2),
                  style: TextStyle(
                      color: Theme.of(context)
                          .colorScheme
                          .onPrimary
                          .withOpacity(0.6)),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
