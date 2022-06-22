part of 'add_token_cubit.dart';

@immutable
class AddTokenState {
  final bool isLoading;
  final String errorMessage;
  final List<TokenListModel> tokenList;

  const AddTokenState({
    this.isLoading = false,
    this.errorMessage = '',
    this.tokenList = const [],
  });
}
