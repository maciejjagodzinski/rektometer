part of 'portfolio_cubit.dart';

@immutable
class PortfolioState {
  final List<AddedTokenModel>? addedTokensIdsList;
  final List<TrackerModel> trackerModels;
  final bool isLoading;
  final String errorMessage;

  const PortfolioState({
    this.isLoading = false,
    this.errorMessage = '',
    required this.addedTokensIdsList,
    this.trackerModels = const [],
  });
}
