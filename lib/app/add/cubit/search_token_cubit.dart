import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rektometer/models/search_list_model.dart';
import 'package:rektometer/repositories/portfolio_repository.dart';
import 'package:rektometer/repositories/search_list_repository.dart';

part 'search_token_state.dart';

class SearchTokenCubit extends Cubit<SearchTokenState> {
  SearchTokenCubit(this._searchListRepository, this._portfolioRepository)
      : super(const SearchTokenState(
          addTokenId: '',
          tokenList: [],
          isLoading: false,
          errorMessage: '',
          tokenSaved: false,
        ));

  final SearchListRepository _searchListRepository;
  final PortfolioRepository _portfolioRepository;

  Future<void> searchTokenPageStart() async {
    emit(const SearchTokenState(
      isLoading: true,
      errorMessage: '',
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
          isLoading: false,
          errorMessage: '',
          tokenSaved: false,
        ));
      }
    } catch (error) {
      emit(SearchTokenState(
        isLoading: false,
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
          isLoading: false,
          errorMessage: '',
          tokenList: [],
          addTokenId: '',
          tokenSaved: true,
        ));
      }
    } catch (error) {
      emit(SearchTokenState(
        isLoading: false,
        errorMessage: error.toString(),
        tokenList: const [],
        addTokenId: '',
        tokenSaved: false,
      ));
    }
  }
}
