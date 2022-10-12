part of 'details_cubit.dart';

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState({
    required List<TradeModel> tradeModels,
    required Status status,
    required String? errorMessage,
    required bool navigatedPortfolio,
  }) = _DetailsState;
}
