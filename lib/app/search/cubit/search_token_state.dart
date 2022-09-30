part of 'search_token_cubit.dart';

@immutable
class SearchTokenState {
  final bool isLoading;
  final String errorMessage;
  final List<SearchListModel> tokenList;
  final String addTokenId;
  final bool tokenSaved;

  const SearchTokenState({
    required this.isLoading,
    required this.errorMessage,
    required this.tokenList,
    required this.addTokenId,
    required this.tokenSaved,
  });
}
