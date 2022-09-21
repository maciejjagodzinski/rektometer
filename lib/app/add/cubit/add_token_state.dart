part of 'add_token_cubit.dart';

@immutable
class AddTokenState {
  final bool isLoading;
  final String errorMessage;
  final List<TokenListModel> tokenList;
  final String addTokenId;
  final bool tokenSaved;
  final bool navigatedToPortfolioPage;

  const AddTokenState({
    required this.isLoading,
    required this.errorMessage,
    required this.tokenList,
    required this.addTokenId,
    required this.tokenSaved,
    required this.navigatedToPortfolioPage,
  });
}
