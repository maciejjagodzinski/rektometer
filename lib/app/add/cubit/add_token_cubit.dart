import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rektometer/models/token_list_model.dart';
import 'package:rektometer/repositories/portfolio_repository.dart';
import 'package:rektometer/repositories/token_list_repository.dart';

part 'add_token_state.dart';

class AddTokenCubit extends Cubit<AddTokenState> {
  AddTokenCubit(this._tokenListRepository, this._portfolioRepository)
      : super(const AddTokenState(
          addTokenId: '',
          tokenList: [],
          isLoading: false,
          errorMessage: '',
          tokenSaved: false,
          navigatedToPortfolioPage: false,
        ));

  final TokenListRepository _tokenListRepository;
  final PortfolioRepository _portfolioRepository;

  Future<void> addTokenPageStart() async {
    final tokenList = await _tokenListRepository.getTokenListModel();
    {
      emit(AddTokenState(
        tokenList: tokenList,
        addTokenId: '',
        isLoading: false,
        errorMessage: '',
        tokenSaved: false,
        navigatedToPortfolioPage: false,
      ));
    }
  }

  Future<void> addToken({
    required String id,
  }) async {
    await _portfolioRepository.addTokenToPortfolio(id: id);
    {
      emit(const AddTokenState(
        isLoading: false,
        errorMessage: '',
        tokenList: [],
        addTokenId: '',
        tokenSaved: true,
        navigatedToPortfolioPage: false,
      ));
    }
  }

  Future<void> navigateToPortfolioPage() async {
    emit(const AddTokenState(
      isLoading: false,
      errorMessage: '',
      tokenList: [],
      addTokenId: '',
      tokenSaved: false,
      navigatedToPortfolioPage: true,
    ));
  }
}
