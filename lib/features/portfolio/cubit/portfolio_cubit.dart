import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rektometer/app/domain/models/portfolio_item_model.dart';
import 'package:rektometer/app/domain/repositories/portfolio_repository.dart';

part 'portfolio_state.dart';

class PortfolioCubit extends Cubit<PortfolioState> {
  PortfolioCubit(this._portfolioRepository)
      : super(
          const PortfolioState(
            portfolioItemModels: [],
            isLoading: true,
            errorMessage: '',
            addTokenPageNavigated: false,
          ),
        );

  final PortfolioRepository _portfolioRepository;

  Future<void> showPortfolio() async {
    try {
      final portfolioItemModels =
          await _portfolioRepository.getPortfolioItemModels();
      emit(
        PortfolioState(
          isLoading: false,
          errorMessage: '',
          portfolioItemModels: portfolioItemModels,
          addTokenPageNavigated: false,
        ),
      );
    } catch (error) {
      emit(
        PortfolioState(
          isLoading: false,
          errorMessage: error.toString(),
          portfolioItemModels: const [],
          addTokenPageNavigated: false,
        ),
      );
    }
  }

  Future<void> removeTokenFromPortfolio({
    required String investmentDocumentId,
  }) async {
    try {
      await _portfolioRepository.deleteTokenFromPortfolio(
        investmentDocumentId: investmentDocumentId,
      );
    } catch (error) {
      emit(PortfolioState(
        isLoading: false,
        errorMessage: error.toString(),
        portfolioItemModels: const [],
        addTokenPageNavigated: false,
      ));
    }
  }
}
