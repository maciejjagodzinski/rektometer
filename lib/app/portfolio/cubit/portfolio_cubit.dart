import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rektometer/models/portfolio_model.dart';
import 'package:rektometer/repositories/portfolio_repository.dart';

part 'portfolio_state.dart';

class PortfolioCubit extends Cubit<PortfolioState> {
  PortfolioCubit(this._portfolioRepository) : super(const PortfolioState());

  final PortfolioRepository _portfolioRepository;

  StreamSubscription? _streamSubscription;

  Future<void> portfolioStart() async {
    _streamSubscription =
        _portfolioRepository.getPortfolioStream().listen((tokensTracked) {
      emit(PortfolioState(tokensTracked: tokensTracked));
    })
          ..onError((error) {
            emit(PortfolioState(
                isLoading: false,
                errorMessage: error.toString(),
                tokensTracked: const []));
          });
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
