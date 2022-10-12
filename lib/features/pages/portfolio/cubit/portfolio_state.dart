part of 'portfolio_cubit.dart';

@freezed
class PortfolioState with _$PortfolioState {
  const factory PortfolioState({
    required List<PortfolioItemModel> portfolioItemModels,
    required Status status,
    required String? errorMessage,
    required bool addTokenPageNavigated,
  }) = _PortfolioState;
}
