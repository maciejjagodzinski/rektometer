import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rektometer/features/search/cubit/search_token_cubit.dart';
import 'package:rektometer/features/search/search_delegate.dart';
import 'package:rektometer/data/remote_data_sources/portfolio_remote_data_source.dart';
import 'package:rektometer/data/remote_data_sources/search_token_remote_data_source.dart';
import 'package:rektometer/app/domain/repositories/portfolio_repository.dart';
import 'package:rektometer/app/domain/repositories/search_list_repository.dart';

class SearchTokenPage extends StatefulWidget {
  const SearchTokenPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchTokenPage> createState() => _SearchTokenPageState();
}

class _SearchTokenPageState extends State<SearchTokenPage> {
  var addTokenId = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add some coins'),
      ),
      body: BlocProvider(
        create: (context) => SearchTokenCubit(
          SearchListRepository(SearchListRemoteDataSource()),
          PortfolioRepository(PortfolioRemoteDataSource()),
        )..searchTokenPageStart(),
        child: BlocBuilder<SearchTokenCubit, SearchTokenState>(
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
              ],
            ),
          );
        }),
      ),
    );
  }
}
