import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rektometer/app/app.dart';
import 'package:rektometer/app/injection_container.dart';
import 'package:rektometer/features/pages/search/cubit/search_token_cubit.dart';
import 'package:rektometer/domain/models/search_list_model.dart';

class SearchTokenModelDelegate extends SearchDelegate {
  SearchTokenModelDelegate(this.tokenList);

  final List<SearchListModel> tokenList;

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
          return BlocProvider<SearchTokenCubit>(
            create: (context) {
              return getIt();
            },
            child: BlocListener<SearchTokenCubit, SearchTokenState>(
              listener: (context, state) {
                if (state.tokenSaved) {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => const RootPage()),
                  ));
                }
              },
              child: BlocBuilder<SearchTokenCubit, SearchTokenState>(
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
                                    .read<SearchTokenCubit>()
                                    .addToken(id: result);
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
            ),
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
