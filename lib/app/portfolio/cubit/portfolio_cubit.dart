import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rektometer/models/portfolio_item_model.dart';
import 'package:rektometer/models/trades_model.dart';
import 'package:rektometer/repositories/portfolio_repository.dart';

part 'portfolio_state.dart';

class PortfolioCubit extends Cubit<PortfolioState> {
  PortfolioCubit(this._portfolioRepository)
      : super(
          const PortfolioState(
            portfolioItemModels: [],
            isLoading: true,
            errorMessage: '',
          ),
        );

  final PortfolioRepository _portfolioRepository;

  Future<void> showTradeModels() async {
    final portfolioItemModels =
        await _portfolioRepository.testUzyskaniaTrades();
    emit(
      PortfolioState(
        isLoading: false,
        errorMessage: '',
        portfolioItemModels: portfolioItemModels,
      ),
    );
  }
}
