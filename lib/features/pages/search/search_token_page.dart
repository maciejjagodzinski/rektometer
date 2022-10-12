import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rektometer/app/core/enums.dart';
import 'package:rektometer/features/pages/search/cubit/search_token_cubit.dart';
import 'package:rektometer/features/pages/search/search_delegate.dart';
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
        child: BlocListener<SearchTokenCubit, SearchTokenState>(
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
          },
          child: BlocBuilder<SearchTokenCubit, SearchTokenState>(
              builder: (context, state) {
            final tokenList = state.tokenList;

            if (state.status == Status.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () async {
                      await showSearch(
                          context: context,
                          delegate: SearchTokenModelDelegate(tokenList));
                    },
                    icon: const Icon(Icons.search),
                    label: const Text("Search for tokens to add"),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
