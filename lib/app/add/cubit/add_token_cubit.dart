import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rektometer/models/token_list_model.dart';
import 'package:rektometer/repositories/investments_repository.dart';
import 'package:rektometer/repositories/token_list_repository.dart';

part 'add_token_state.dart';

class AddTokenCubit extends Cubit<AddTokenState> {
  AddTokenCubit(this._tokenListRepository, this._investmentsRepository)
      : super(const AddTokenState(
            tokenList: [], isLoading: false, errorMessage: ''));

  final TokenListRepository _tokenListRepository;
  final InvestmentsRepository _investmentsRepository;

  Future<void> start() async {
    final tokenList = await _tokenListRepository.getTokenListModel();
    {
      emit(AddTokenState(tokenList: tokenList));
    }
  }

  Future<void> addToken(
      {required String name,
      required String id,
      required String symbol}) async {
    await _investmentsRepository.addTokenToPortfolio(
        name: name, id: id, symbol: symbol);
  }
}
