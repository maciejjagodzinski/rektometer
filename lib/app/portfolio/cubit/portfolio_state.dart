part of 'portfolio_cubit.dart';

@immutable
class PortfolioState {
  final List<TrackerModel> trackerModels;
  final bool isLoading;
  final String errorMessage;

  const PortfolioState({
    required this.isLoading,
    required this.errorMessage,
    required this.trackerModels,
  });
}
