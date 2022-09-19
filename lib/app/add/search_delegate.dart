import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rektometer/app/add/cubit/add_token_cubit.dart';
import 'package:rektometer/app/portfolio/portfolio_page.dart';
import 'package:rektometer/data/remote_data_sources/portfolio_remote_data_source.dart';
import 'package:rektometer/data/remote_data_sources/token_remote_data_source.dart';
import 'package:rektometer/models/token_list_model.dart';
import 'package:rektometer/repositories/portfolio_repository.dart';
import 'package:rektometer/repositories/token_list_repository.dart';

class SearchTokenModelDelegate extends SearchDelegate {
  SearchTokenModelDelegate(this.tokenList);

  final List<TokenListModel> tokenList;

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, query);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (final token in tokenList) {
      if (token.name.toLowerCase() == (query.toLowerCase())) {
        matchQuery.add(token.id);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          final result = matchQuery[index];
          return BlocProvider(
            create: (context) => AddTokenCubit(
                TokenListRepository(TokenListRemoteDataSource()),
                PortfolioRepository(PortfolioRemoteDataSource())),
            child: BlocBuilder<AddTokenCubit, AddTokenState>(
                builder: (context, state) {
              return Center(
                child: Column(children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).colorScheme.primary,
                        blurRadius: 8,
                      ),
                    ]),
                    child: Card(
                      color: Theme.of(context).backgroundColor,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(children: [
                          Text(
                            'Add ${result.toUpperCase()} to portfolio?',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          const SizedBox(height: 10),
                          IconButton(
                            onPressed: () {
                              context
                                  .read<AddTokenCubit>()
                                  .addToken(id: result);
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => const PortfolioPage()),
                              ));
                            },
                            icon: Icon(Icons.check_box,
                                size: 50,
                                color: Theme.of(context).colorScheme.primary),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ]),
              );
            }),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (final token in tokenList) {
      if (token.name.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(token.name);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          final suggestion = matchQuery[index];
          return ListTile(
              title: Text(suggestion),
              onTap: () {
                query = suggestion;
                showResults(context);
              });
        });
  }
}
