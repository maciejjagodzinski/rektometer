part of 'add_token_cubit.dart';

@immutable
class AddTokenState {
  final bool isLoading;
  final String errorMessage;
  final List<TokenListModel> tokenList;
  final String addTokenId;

  const AddTokenState({
    required this.isLoading,
    required this.errorMessage,
    required this.tokenList,
    required this.addTokenId,
  });
}
