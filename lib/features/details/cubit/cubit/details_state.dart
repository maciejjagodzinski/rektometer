part of 'details_cubit.dart';

@immutable
class DetailsState {
  final List<TradeModel> tradeModels;
  final bool isLoading;
  final String errorMessage;

  const DetailsState({
    required this.tradeModels,
    required this.isLoading,
    required this.errorMessage,
  });
}
