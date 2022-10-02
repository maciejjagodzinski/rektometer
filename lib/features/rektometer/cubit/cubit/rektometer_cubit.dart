import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rektometer/app/domain/models/rektometer_model.dart';
import 'package:rektometer/app/domain/repositories/rektometer_repository.dart';

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
    try {
      final rektometerModel = await _rektometerRepository.getRektometerModel();
      emit(
        RektometerState(
          rektometerModel: rektometerModel,
          isLoading: false,
          errorMessage: '',
        ),
      );
    } catch (error) {
      emit(RektometerState(
        rektometerModel: null,
        isLoading: false,
        errorMessage: error.toString(),
      ));
    }
  }
}
