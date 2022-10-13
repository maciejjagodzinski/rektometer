import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rektometer/app/core/enums.dart';
import 'package:rektometer/domain/models/search_list_model.dart';
import 'package:rektometer/domain/repositories/portfolio_repository.dart';
import 'package:rektometer/domain/repositories/search_list_repository.dart';

part 'search_token_state.dart';
part 'search_token_cubit.freezed.dart';

@injectable
class SearchTokenCubit extends Cubit<SearchTokenState> {
  SearchTokenCubit(
      {required this.searchListRepository, required this.portfolioRepository})
      : super(const SearchTokenState(
          addTokenId: '',
          tokenList: [],
          status: Status.initial,
          errorMessage: null,
          tokenSaved: false,
        ));

  final SearchListRepository searchListRepository;
  final PortfolioRepository portfolioRepository;

  Future<void> searchTokenPageStart() async {
    emit(const SearchTokenState(
      status: Status.loading,
      errorMessage: null,
      tokenList: [],
      addTokenId: '',
      tokenSaved: false,
    ));
    try {
      final tokenList = await searchListRepository.getTokenListModel();
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
      await portfolioRepository.addTokenToPortfolio(id: id);
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
