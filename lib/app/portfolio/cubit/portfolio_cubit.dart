import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rektometer/models/added_token_model.dart';
import 'package:rektometer/models/tracker_model.dart';
import 'package:rektometer/repositories/portfolio_repository.dart';

part 'portfolio_state.dart';

class PortfolioCubit extends Cubit<PortfolioState> {
  PortfolioCubit(this._portfolioRepository)
      : super(const PortfolioState(addedTokensIdsList: null));

  final PortfolioRepository _portfolioRepository;

  // StreamSubscription? _streamSubscription;

  // Future<void> portfolioStart() async {
  //   _streamSubscription =
  //       _portfolioRepository.getPortfolioStream().listen((addedTokensIds) {
  //     emit(PortfolioState(addedTokensIds: addedTokensIds));
  //   })
  //         ..onError((error) {
  //           emit(PortfolioState(
  //             isLoading: false,
  //             errorMessage: error.toString(),
  //             addedTokensIds: const [],
  //             addedTokensIdsString: '',
  //           ));
  //         });
  // }

  Future<void> getIdsforApi() async {
    final addedTokensIdsList = await _portfolioRepository.getAddedTokensIds();
    emit(
      PortfolioState(
        isLoading: false,
        errorMessage: '',
        addedTokensIdsList: addedTokensIdsList,
        trackerModels: const [],
      ),
    );
  }

  Future<void> showPortfolioTokens() async {
    final trackerModels = await _portfolioRepository.getTrackerModels(
      trackerIdsList: ['bitcoin', 'polkadot', 'xi-token'],
    );
    emit(PortfolioState(
        addedTokensIdsList: const [], trackerModels: trackerModels));
  }

  // @override
  // Future<void> close() {
  //   _streamSubscription?.cancel();
  //   return super.close();
  // }
}
