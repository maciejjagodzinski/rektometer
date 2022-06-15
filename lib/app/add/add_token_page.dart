import 'package:flutter/material.dart';
import 'package:rektometer/repositories/token_list_repository.dart';

class AddTokenPage extends StatelessWidget {
  const AddTokenPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add some shitcoins'),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // insert method to get token list
          },
          child: const Text('get token list'),
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
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
        child: Text(
          query,
          style: const TextStyle(fontSize: 50),
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> tokenList = [
      "bitcoin",
      "polkadot",
      "ethereum",
    ];
    List<String> matchQuery = [];
    for (final token in tokenList) {
      if (token.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(token);
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
