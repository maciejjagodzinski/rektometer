import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rektometer/data/remote_data_sources/portfolio_remote_data_source.dart';
import 'package:rektometer/details/cubit/cubit/details_cubit.dart';
import 'package:rektometer/models/portfolio_item_model.dart';
import 'package:rektometer/repositories/portfolio_repository.dart';

class DetailsPage extends StatefulWidget {
  DetailsPage({
    required this.portfolioItemModel,
    Key? key,
  }) : super(key: key);

  final PortfolioItemModel portfolioItemModel;
  final priceController = TextEditingController();
  final volumeController = TextEditingController();

  @override
  State<DetailsPage> createState() => _DetailsPage();
}

class _DetailsPage extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add trades for this token'),
      ),
      body: BlocProvider(
        create: (context) =>
            DetailsCubit(PortfolioRepository(PortfolioRemoteDataSource())),
        child:
            BlocBuilder<DetailsCubit, DetailsState>(builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state.errorMessage.isNotEmpty) {
            return Center(
              child: Text('Error occured: ${state.errorMessage}'),
            );
          }
          if (widget.portfolioItemModel.tokenId.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView(children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              child: Column(children: [
                Image.network(
                  widget.portfolioItemModel.image.toString(),
                  width: 150,
                  height: 150,
                ),
                const SizedBox(height: 30),
                Text(
                  widget.portfolioItemModel.name +
                      '(${widget.portfolioItemModel.symbol.toUpperCase()})',
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: widget.priceController,
                  decoration: const InputDecoration(hintText: 'price'),
                  textAlign: TextAlign.center,
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
                TextField(
                  controller: widget.volumeController,
                  decoration: const InputDecoration(hintText: 'volume'),
                  textAlign: TextAlign.center,
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 100,
                        child: ElevatedButton(
                          onPressed: () async {
                            await context.read<DetailsCubit>().addBuyTrade(
                                  tradeTokenId:
                                      widget.portfolioItemModel.tokenId,
                                  price: widget.priceController.text,
                                  volume: widget.volumeController.text,
                                );
                          },
                          child: const Text('BUY'),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                            Colors.green[800],
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: ElevatedButton(
                          onPressed: () async {
                            await context.read<DetailsCubit>().addSellTrade(
                                  tradeTokenId:
                                      widget.portfolioItemModel.tokenId,
                                  price: widget.priceController.text,
                                  volume: widget.volumeController.text,
                                );
                          },
                          child: const Text('SELL'),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                            Colors.red[800],
                          )),
                        ),
                      )
                    ])
              ]),
            )
          ]);
        }),
      ),
    );
  }
}
