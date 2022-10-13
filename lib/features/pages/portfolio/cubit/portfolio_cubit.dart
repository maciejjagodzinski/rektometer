import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rektometer/app/core/enums.dart';
import 'package:rektometer/domain/models/portfolio_item_model.dart';
import 'package:rektometer/domain/repositories/portfolio_repository.dart';

part 'portfolio_state.dart';
part 'portfolio_cubit.freezed.dart';

class PortfolioCubit extends Cubit<PortfolioState> {
  PortfolioCubit({required this.portfolioRepository})
      : super(
          const PortfolioState(
            portfolioItemModels: [],
            status: Status.initial,
            errorMessage: '',
            addTokenPageNavigated: false,
          ),
        );

  final PortfolioRepository portfolioRepository;

  Future<void> showPortfolio() async {
    emit(const PortfolioState(
      status: Status.loading,
      errorMessage: null,
      portfolioItemModels: [],
      addTokenPageNavigated: false,
    ));
    try {
      final portfolioItemModels =
          await portfolioRepository.getPortfolioItemModels();
      emit(
        PortfolioState(
          status: Status.success,
          errorMessage: null,
          portfolioItemModels: portfolioItemModels,
          addTokenPageNavigated: false,
        ),
      );
    } catch (error) {
      emit(
        PortfolioState(
          status: Status.error,
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
      await portfolioRepository.deleteTokenFromPortfolio(
        investmentDocumentId: investmentDocumentId,
      );
    } catch (error) {
      emit(PortfolioState(
        status: Status.error,
        errorMessage: error.toString(),
        portfolioItemModels: const [],
        addTokenPageNavigated: false,
      ));
    }
  }
}
