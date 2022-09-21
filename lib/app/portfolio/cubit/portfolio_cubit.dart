import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rektometer/models/portfolio_item_model.dart';
import 'package:rektometer/repositories/portfolio_repository.dart';

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
}
