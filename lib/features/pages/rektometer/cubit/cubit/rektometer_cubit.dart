import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rektometer/app/core/enums.dart';
import 'package:rektometer/domain/models/rektometer_model.dart';
import 'package:rektometer/domain/repositories/rektometer_repository.dart';

part 'rektometer_state.dart';
part 'rektometer_cubit.freezed.dart';

class RektometerCubit extends Cubit<RektometerState> {
  RektometerCubit({required this.rektometerRepository})
      : super(
          const RektometerState(
            rektometerModel: null,
            status: Status.initial,
            errorMessage: null,
          ),
        );

  final RektometerRepository rektometerRepository;

  Future<void> showRektometer() async {
    emit(const RektometerState(
      rektometerModel: null,
      status: Status.loading,
      errorMessage: null,
    ));
    try {
      final rektometerModel = await rektometerRepository.getRektometerModel();
      emit(
        RektometerState(
          rektometerModel: rektometerModel,
          status: Status.success,
          errorMessage: null,
        ),
      );
    } catch (error) {
      emit(RektometerState(
        rektometerModel: null,
        status: Status.error,
        errorMessage: error.toString(),
      ));
    }
  }
}
