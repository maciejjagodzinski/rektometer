import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rektometer/models/token_list_model.dart';
import 'package:rektometer/repositories/token_list_repository.dart';

part 'add_token_state.dart';

class AddTokenCubit extends Cubit<AddTokenState> {
  AddTokenCubit(this._tokenListRepository)
      : super(const AddTokenState(
            tokenList: [], isLoading: false, errorMessage: ''));

  final TokenListRepository _tokenListRepository;

  Future<void> start() async {
    final tokenList = await _tokenListRepository.getTokenListModel();
    {
      emit(AddTokenState(tokenList: tokenList));
    }
  }
}
