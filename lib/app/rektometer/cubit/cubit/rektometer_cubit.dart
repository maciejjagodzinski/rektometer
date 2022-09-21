import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rektometer/models/rektometer_model.dart';
import 'package:rektometer/repositories/rektometer_repository.dart';

part 'rektometer_state.dart';

class RektometerCubit extends Cubit<RektometerState> {
  RektometerCubit(this._rektometerRepository)
      : super(
          const RektometerState(
            rektometerModel: null,
            isLoading: true,
            errorMessage: '',
          ),
        );

  final RektometerRepository _rektometerRepository;

  Future<void> showRektometer() async {
    final rektometerModel = await _rektometerRepository.getRektometerModel();
    emit(
      RektometerState(
        rektometerModel: rektometerModel,
        isLoading: false,
        errorMessage: '',
      ),
    );
  }
}
