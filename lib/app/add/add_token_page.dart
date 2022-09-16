import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rektometer/app/add/cubit/add_token_cubit.dart';
import 'package:rektometer/app/add/search_delegate.dart';
import 'package:rektometer/data/remote_data_sources/portfolio_remote_data_source.dart';
import 'package:rektometer/data/remote_data_sources/token_remote_data_source.dart';
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
        title: const Text('Add some coins'),
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
