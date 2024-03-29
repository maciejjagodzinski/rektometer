import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rektometer/app/app.dart';
import 'package:rektometer/app/core/enums.dart';
import 'package:rektometer/app/injection_container.dart';
import 'package:rektometer/features/pages/details/cubit/cubit/details_cubit.dart';
import 'package:rektometer/domain/models/portfolio_item_model.dart';

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
    return BlocProvider<DetailsCubit>(
      create: (context) {
        return getIt()
          ..showTrades(
            id: widget.portfolioItemModel.tokenId,
          );
      },
      child: BlocListener<DetailsCubit, DetailsState>(
        listener: (context, state) {
          if (state.status == Status.error) {
            final errorMessage = state.errorMessage ?? "Error";
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                errorMessage,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              duration: const Duration(seconds: 5),
              backgroundColor: Colors.red[200],
            ));
          }
          if (state.navigatedPortfolio) {
            Navigator.of(context).push(MaterialPageRoute(
              builder: ((context) => const RootPage()),
            ));
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Add trades for this token'),
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      context.read<DetailsCubit>().navigatePortfolio();
                    });
              },
            ),
          ),
          body: BlocBuilder<DetailsCubit, DetailsState>(
              builder: (context, state) {
            final tradeModels = state.tradeModels;

            if (state.status == Status.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (widget.portfolioItemModel.tokenId.isEmpty) {
              return const Center(
                child: Text('Rekt.. no coin found'),
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
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    widget.portfolioItemModel.name +
                        '(${widget.portfolioItemModel.symbol.toUpperCase()})',
                    style: Theme.of(context).textTheme.headline6,
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
                                    date: DateTime.now(),
                                    type: 'BUY',
                                  );
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailsPage(
                                    portfolioItemModel:
                                        widget.portfolioItemModel,
                                  ),
                                ),
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
                                    date: DateTime.now(),
                                    type: 'SELL',
                                  );
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailsPage(
                                    portfolioItemModel:
                                        widget.portfolioItemModel,
                                  ),
                                ),
                              );
                            },
                            child: const Text('SELL'),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                              Colors.red[800],
                            )),
                          ),
                        )
                      ]),
                  const SizedBox(height: 30),
                  for (final tradeModel in tradeModels) ...[
                    Dismissible(
                      key: ValueKey(
                        tradeModel.tradeDocumentId,
                      ),
                      confirmDismiss: (direction) async {
                        return direction == DismissDirection.endToStart;
                      },
                      onDismissed: ((direction) {
                        context.read<DetailsCubit>().deleteTrade(
                              tradeDocumentId: tradeModel.tradeDocumentId,
                            );
                      }),
                      background: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.red[200],
                        ),
                        child: const Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Icon(Icons.delete_forever),
                          ),
                        ),
                      ),
                      child: Container(
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
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 50,
                              child: Text(tradeModel.type,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .apply(
                                        color: tradeModel.type == 'SELL'
                                            ? Colors.red[200]
                                            : Colors.green[200],
                                      )),
                            ),
                            SizedBox(
                              width: 100,
                              child: Text(
                                tradeModel.tradeDateFormatted(),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '\$ ${tradeModel.price.toString()}',
                              ),
                            ),
                            const Spacer(),
                            Text(
                              tradeModel.volume.toString(),
                            )
                          ],
                        ),
                      ),
                    )
                  ]
                ]),
              )
            ]);
          }),
        ),
      ),
    );
  }
}
