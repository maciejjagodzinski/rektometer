import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

part 'portfolio_state.dart';

class PortfolioCubit extends Cubit<PortfolioState> {
  PortfolioCubit()
      : super(
          const PortfolioState(
            documents: [],
            isLoading: false,
            errorMessage: '',
          ),
        );

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    emit(
      const PortfolioState(
        documents: [],
        isLoading: true,
        errorMessage: '',
      ),
    );
    _streamSubscription = FirebaseFirestore.instance
        .collection('users')
        .doc('6030qh2FrhbCvyASFXmwU6tG4QJ3')
        .collection('investments')
        .snapshots()
        .listen((data) {
      emit(
        PortfolioState(
          isLoading: false,
          errorMessage: '',
          documents: data.docs,
        ),
      );
    })
      ..onError((error) {
        emit(PortfolioState(
            isLoading: false, errorMessage: error.toString(), documents: []));
      });
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
