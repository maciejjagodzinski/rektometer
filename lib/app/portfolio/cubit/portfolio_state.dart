part of 'portfolio_cubit.dart';

@immutable
class PortfolioState {
  final List<PortfolioModel> tokensTracked;
  final bool isLoading;
  final String errorMessage;

  const PortfolioState({
    this.isLoading = false,
    this.errorMessage = '',
    this.tokensTracked = const [],
  });
}
