part of 'details_cubit.dart';

@immutable
class DetailsState {
  final List<TradeModel> tradeModels;
  final Status status;
  final String? errorMessage;

  const DetailsState({
    required this.tradeModels,
    required this.status,
    required this.errorMessage,
  });
}
