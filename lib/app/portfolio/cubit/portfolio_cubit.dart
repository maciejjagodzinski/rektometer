import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rektometer/models/tracker_model.dart';
import 'package:rektometer/repositories/portfolio_repository.dart';

part 'portfolio_state.dart';

class PortfolioCubit extends Cubit<PortfolioState> {
  PortfolioCubit(this._portfolioRepository)
      : super(
          const PortfolioState(
              trackerModels: [], isLoading: false, errorMessage: ''),
        );

  final PortfolioRepository _portfolioRepository;

  Future<void> showPortfolioTokens() async {
    final addedTokensIdsList = await _portfolioRepository.getAddedTokensIds();
    emit(
      const PortfolioState(
        isLoading: true,
        errorMessage: '',
        trackerModels: [],
      ),
    );
    final trackerModels = await _portfolioRepository.getTrackerModels(
      trackerIdsList: addedTokensIdsList,
    );
    emit(
      PortfolioState(
        trackerModels: trackerModels,
        isLoading: false,
        errorMessage: '',
      ),
    );
  }
}
