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
  }) async {
    await _portfolioRepository.addTradeModel(
      tradeTokenId: tradeTokenId,
      price: price,
      volume: volume,
    );
  }

  Future<void> addSellTrade({
    required String tradeTokenId,
    required String price,
    required String volume,
  }) async {
    await _portfolioRepository.addTradeModel(
      tradeTokenId: tradeTokenId,
      price: price,
      volume: volume,
    );
  }

  Future<void> showTrades({
    required String id,
  }) async {
    final tradeModels =
        await _portfolioRepository.getTradesForSingleTokenData(id: id);
    emit(
      DetailsState(
        tradeModels: tradeModels,
        isLoading: false,
        errorMessage: '',
      ),
    );
  }
}
