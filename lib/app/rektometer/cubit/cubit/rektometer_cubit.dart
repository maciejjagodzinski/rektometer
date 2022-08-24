import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rektometer/models/rektometer_model.dart';
import 'package:rektometer/repositories/portfolio_repository.dart';

part 'rektometer_state.dart';

class RektometerCubit extends Cubit<RektometerState> {
  RektometerCubit(this._portfolioRepository)
      : super(
          const RektometerState(
            rektometerModel: null,
            isLoading: true,
            errorMessage: '',
          ),
        );

  final PortfolioRepository _portfolioRepository;

  Future<void> showRektometer() async {
    final rektometerModel = await _portfolioRepository.getRektometerModel();
    emit(
      RektometerState(
        rektometerModel: rektometerModel,
        isLoading: false,
        errorMessage: '',
      ),
    );
  }
}
