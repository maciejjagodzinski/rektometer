import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rektometer/app/add/cubit/add_token_cubit.dart';
import 'package:rektometer/data/remote_data_sources/portfolio_remote_data_source.dart';
import 'package:rektometer/data/remote_data_sources/token_remote_data_source.dart';
import 'package:rektometer/models/token_list_model.dart';
import 'package:rektometer/repositories/portfolio_repository.dart';
import 'package:rektometer/repositories/token_list_repository.dart';

class AddTokenPage extends StatefulWidget {
  const AddTokenPage({
    Key? key,
  }) : super(key: key);

  @override
  State<AddTokenPage> createState() => _AddTokenPageState();
}

class _AddTokenPageState extends State<AddTokenPage> {
  var addTokenId = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add some shitcoins'),
      ),
      body: BlocProvider(
        create: (context) => AddTokenCubit(
          TokenListRepository(TokenListRemoteDataSource()),
          PortfolioRepository(PortfolioRemoteDataSource()),
        )..addTokenPageStart(),
        child: BlocBuilder<AddTokenCubit, AddTokenState>(
          builder: (context, state) {
            final tokenList = state.tokenList;
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () async {
                      final searchResult = await showSearch(
                          context: context,
                          delegate: SearchTokenModelDelegate(tokenList));
                      setState(() {
                        addTokenId = searchResult;
                      });
                    },
                    icon: const Icon(Icons.search),
                    label: const Text("Search for tokens to add"),
                  ),
                  addTokenId == ''
                      ? Container()
                      : ElevatedButton.icon(
                          onPressed: () {
                            context
                                .read<AddTokenCubit>()
                                .addToken(id: addTokenId);
                          },
                          icon: const Icon(Icons.add),
                          label: Text(addTokenId))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
          itemCount: matchQuery.length,
          itemBuilder: (context, index) {
            final result = matchQuery[index];
            return ListTile(
              tileColor: Colors.blue.shade200,
              title: Text(
                query,
                style: const TextStyle(fontSize: 30),
              ),
              subtitle: Text('ID:$result'),
              onTap: () {
                close(context, result);
              },
            );
          }),
    );
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
            },
          );
        });
  }
}
