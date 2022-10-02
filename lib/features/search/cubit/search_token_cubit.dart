import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rektometer/app/core/enums.dart';
import 'package:rektometer/app/domain/models/search_list_model.dart';
import 'package:rektometer/app/domain/repositories/portfolio_repository.dart';
import 'package:rektometer/app/domain/repositories/search_list_repository.dart';

part 'search_token_state.dart';

class SearchTokenCubit extends Cubit<SearchTokenState> {
  SearchTokenCubit(this._searchListRepository, this._portfolioRepository)
      : super(const SearchTokenState(
          addTokenId: '',
          tokenList: [],
          status: Status.initial,
          errorMessage: null,
          tokenSaved: false,
        ));

  final SearchListRepository _searchListRepository;
  final PortfolioRepository _portfolioRepository;

  Future<void> searchTokenPageStart() async {
    emit(const SearchTokenState(
      status: Status.loading,
      errorMessage: null,
      tokenList: [],
      addTokenId: '',
      tokenSaved: false,
    ));
    try {
      final tokenList = await _searchListRepository.getTokenListModel();
      {
        emit(SearchTokenState(
          tokenList: tokenList,
          addTokenId: '',
          status: Status.success,
          errorMessage: null,
          tokenSaved: false,
        ));
      }
    } catch (error) {
      emit(SearchTokenState(
        status: Status.error,
        errorMessage: error.toString(),
        tokenList: const [],
        addTokenId: '',
        tokenSaved: false,
      ));
    }
  }

  Future<void> addToken({
    required String id,
  }) async {
    try {
      await _portfolioRepository.addTokenToPortfolio(id: id);
      {
        emit(const SearchTokenState(
          status: Status.success,
          errorMessage: null,
          tokenList: [],
          addTokenId: '',
          tokenSaved: true,
        ));
      }
    } catch (error) {
      emit(SearchTokenState(
        status: Status.error,
        errorMessage: error.toString(),
        tokenList: const [],
        addTokenId: '',
        tokenSaved: false,
      ));
    }
  }
}
