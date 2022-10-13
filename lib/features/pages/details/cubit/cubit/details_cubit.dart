import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rektometer/app/core/enums.dart';
import 'package:rektometer/domain/models/trades_model.dart';
import 'package:rektometer/domain/repositories/trades_repository.dart';

part 'details_state.dart';
part 'details_cubit.freezed.dart';

@injectable
class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit({required this.tradesRepository})
      : super(
          const DetailsState(
            tradeModels: [],
            errorMessage: null,
            status: Status.initial,
            navigatedPortfolio: false,
          ),
        );

  final TradesRepository tradesRepository;

  Future<void> addBuyTrade({
    required String tradeTokenId,
    required String price,
    required String volume,
    required DateTime date,
    required String type,
  }) async {
    try {
      await tradesRepository.addTradeModel(
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
        navigatedPortfolio: false,
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
      await tradesRepository.addTradeModel(
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
        navigatedPortfolio: false,
      ));
    }
  }

  Future<void> deleteTrade({required String tradeDocumentId}) async {
    try {
      await tradesRepository.deleteTradeForSingleToken(
          tradeDocumentId: tradeDocumentId);
    } catch (error) {
      emit(DetailsState(
        tradeModels: const [],
        status: Status.error,
        errorMessage: error.toString(),
        navigatedPortfolio: false,
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
      navigatedPortfolio: false,
    ));
    try {
      final tradeModels =
          await tradesRepository.getTradesForSingleTokenData(id: id);
      emit(
        DetailsState(
          tradeModels: tradeModels,
          status: Status.success,
          errorMessage: null,
          navigatedPortfolio: false,
        ),
      );
    } catch (error) {
      emit(DetailsState(
        tradeModels: const [],
        status: Status.error,
        errorMessage: error.toString(),
        navigatedPortfolio: false,
      ));
    }
  }

  Future<void> navigatePortfolio() async {
    emit(const DetailsState(
      tradeModels: [],
      status: Status.success,
      errorMessage: null,
      navigatedPortfolio: true,
    ));
  }
}
