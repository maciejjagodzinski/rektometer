part of 'portfolio_cubit.dart';

@immutable
class PortfolioState {
  final List<PortfolioItemModel> portfolioItemModels;
  final Status status;
  final String? errorMessage;
  final bool addTokenPageNavigated;

  const PortfolioState({
    required this.status,
    required this.errorMessage,
    required this.portfolioItemModels,
    required this.addTokenPageNavigated,
  });
}
