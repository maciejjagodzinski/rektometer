import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rektometer/app/core/enums.dart';
import 'package:rektometer/app/domain/models/trades_model.dart';
import 'package:rektometer/app/domain/repositories/trades_repository.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit(this._tradesRepository)
      : super(
          const DetailsState(
            tradeModels: [],
            errorMessage: null,
            status: Status.initial,
          ),
        );

  final TradesRepository _tradesRepository;

  Future<void> addBuyTrade({
    required String tradeTokenId,
    required String price,
    required String volume,
    required DateTime date,
    required String type,
  }) async {
    try {
      await _tradesRepository.addTradeModel(
        tradeTokenId: tradeTokenId,
        price: price,
        volume: volume,
        date: date,
        type: type,
      );
    } catch (error) {
      emit(DetailsState(
        tradeModels: const [],
        status: Status.error,
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
      await _tradesRepository.addTradeModel(
        tradeTokenId: tradeTokenId,
        price: price,
        volume: '-' + volume,
        date: date,
        type: type,
      );
    } catch (error) {
      emit(DetailsState(
        tradeModels: const [],
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> deleteTrade({required String tradeDocumentId}) async {
    try {
      await _tradesRepository.deleteTradeForSingleToken(
          tradeDocumentId: tradeDocumentId);
    } catch (error) {
      emit(DetailsState(
        tradeModels: const [],
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }

  Future<void> showTrades({
    required String id,
  }) async {
    emit(const DetailsState(
      tradeModels: [],
      status: Status.loading,
      errorMessage: null,
    ));
    try {
      final tradeModels =
          await _tradesRepository.getTradesForSingleTokenData(id: id);
      emit(
        DetailsState(
          tradeModels: tradeModels,
          status: Status.success,
          errorMessage: null,
        ),
      );
    } catch (error) {
      emit(DetailsState(
        tradeModels: const [],
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }
}
