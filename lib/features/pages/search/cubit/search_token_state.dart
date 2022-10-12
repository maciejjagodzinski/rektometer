part of 'search_token_cubit.dart';

@freezed
class SearchTokenState with _$SearchTokenState {
  const factory SearchTokenState({
    required Status status,
    required String? errorMessage,
    required List<SearchListModel> tokenList,
    required String addTokenId,
    required bool tokenSaved,
  }) = _SearchTokenState;
}
