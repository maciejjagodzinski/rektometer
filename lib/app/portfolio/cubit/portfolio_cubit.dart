import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rektometer/models/investment_model.dart';
import 'package:rektometer/repositories/investments_repository.dart';

part 'portfolio_state.dart';

class PortfolioCubit extends Cubit<PortfolioState> {
  PortfolioCubit(this._investmentsRepository) : super(const PortfolioState());

  final InvestmentsRepository _investmentsRepository;

  StreamSubscription? _streamSubscription;

  Future<void> portfolioStart() async {
    _streamSubscription =
        _investmentsRepository.getInvestmentsStream().listen((investments) {
      emit(PortfolioState(investments: investments));
    })
          ..onError((error) {
            emit(PortfolioState(
                isLoading: false,
                errorMessage: error.toString(),
                investments: const []));
          });
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
