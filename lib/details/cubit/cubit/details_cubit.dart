import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rektometer/models/trades_model.dart';
import 'package:rektometer/repositories/portfolio_repository.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit(this._portfolioRepository)
      : super(
          const DetailsState(
            tradeModels: [],
            errorMessage: '',
            isLoading: true,
          ),
        );

  final PortfolioRepository _portfolioRepository;

  Future<void> addBuyTrade({
    required String tradeTokenId,
    required String price,
    required String volume,
    required DateTime date,
    required String type,
  }) async {
    try {
      await _portfolioRepository.addTradeModel(
        tradeTokenId: tradeTokenId,
        price: price,
        volume: volume,
        date: date,
        type: type,
      );
    } catch (error) {
      emit(DetailsState(
        tradeModels: [],
        isLoading: false,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> addSellTrade({
    required String tradeTokenId,
    required String price,
    required String volume,
    required DateTime date,
    required String type,
  }) async {
    try {
      await _portfolioRepository.addTradeModel(
        tradeTokenId: tradeTokenId,
        price: price,
        volume: '-' + volume,
        date: date,
        type: type,
      );
    } catch (error) {
      emit(DetailsState(
        tradeModels: const [],
        isLoading: false,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> deleteTrade({required String tradeDocumentId}) async {
    try {
      await _portfolioRepository.deleteTradeForSingleToken(
          tradeDocumentId: tradeDocumentId);
    } catch (error) {
      emit(DetailsState(
        tradeModels: const [],
        isLoading: false,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> showTrades({
    required String id,
  }) async {
    try {
      final tradeModels =
          await _portfolioRepository.getTradesForSingleTokenData(id: id);
      emit(
        DetailsState(
          tradeModels: tradeModels,
          isLoading: false,
          errorMessage: '',
        ),
      );
    } catch (error) {
      emit(DetailsState(
        tradeModels: [],
        isLoading: false,
        errorMessage: error.toString(),
      ));
    }
  }
}
