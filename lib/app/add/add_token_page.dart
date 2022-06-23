import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rektometer/app/add/cubit/add_token_cubit.dart';
import 'package:rektometer/data/remote_data_sources/investments_remote_data_source.dart';
import 'package:rektometer/data/remote_data_sources/token_remote_data_source.dart';
import 'package:rektometer/models/token_list_model.dart';
import 'package:rektometer/repositories/investments_repository.dart';
import 'package:rektometer/repositories/token_list_repository.dart';

class AddTokenPage extends StatefulWidget {
  const AddTokenPage({
    Key? key,
  }) : super(key: key);

  @override
  State<AddTokenPage> createState() => _AddTokenPageState();
}

class _AddTokenPageState extends State<AddTokenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add some shitcoins'),
        actions: [
          BlocProvider(
            create: (context) => AddTokenCubit(
                TokenListRepository(TokenListRemoteDataSource()),
                InvestmentsRepository(InvestmentsRemoteDataSource()))
              ..start(),
            child: BlocBuilder<AddTokenCubit, AddTokenState>(
              builder: (context, state) {
                final tokenList = state.tokenList;
                return IconButton(
                  onPressed: () {
                    showSearch(
                        context: context,
                        delegate: CustomSearchDelegate(tokenList));
                  },
                  icon: const Icon(Icons.search),
                );
              },
            ),
          )
        ],
      ),
      body: BlocProvider(
        create: (context) => AddTokenCubit(
            TokenListRepository(TokenListRemoteDataSource()),
            InvestmentsRepository(InvestmentsRemoteDataSource()))
          ..start(),
        child: BlocBuilder<AddTokenCubit, AddTokenState>(
          builder: (context, state) {
            final tokenListModels = state.tokenList;
            return Center(
                child: ListView(
              children: [
                for (final tokenListModel in tokenListModels) ...[
                  Text(tokenListModel.name),
                  Text(tokenListModel.id),
                  Text(tokenListModel.symbol),
                ]
              ],
            ));
          },
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  CustomSearchDelegate(this.tokenList);

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
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 20.0,
          ),
          child: Text(
            query,
            style: const TextStyle(fontSize: 30),
          ),
        ),
      );

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
