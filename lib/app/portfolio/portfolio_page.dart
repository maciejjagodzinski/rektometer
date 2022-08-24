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
                for (final portfolioItemModel in portfolioItemModels) ...[
                  PortfolioWidget(portfolioItemModel)
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
          color: Colors.black12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 35,
                child: Image.network(portfolioItemModel.image),
              ),
              Container(
                height: 35,
                child: Text(portfolioItemModel.volume.toString()),
              ),
              Container(
                height: 35,
                child: Text(portfolioItemModel.price.toString()),
              ),
              Container(
                height: 35,
                child: Text(portfolioItemModel.tokenId),
              ),
              Container(
                height: 35,
                child: Text(portfolioItemModel.priceChange.toString()),
              ),
              Container(
                height: 35,
                child: Text(portfolioItemModel.value.toString()),
              ),
              Container(
                height: 35,
                child: Text(portfolioItemModel.symbol),
              ),
              // Container(
              //   height: 35,
              //   child: Text(portfolioItemModel.name),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
