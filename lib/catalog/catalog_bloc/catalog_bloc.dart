import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../phone_item_model.dart';

part 'catalog_event.dart';
part 'catalog_state.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  CatalogBloc() : super(CatalogInitial()) {

    _onGetPhones(CatalogGetPhonesEvent event, Emitter<CatalogState> emit) async {
      emit(CatalogLoadingState());
      await Future.delayed(const Duration(seconds: 1));
      final phones = PhoneItem.getList();
      emit(CatalogPhonesState(phones));
    }

    on<CatalogGetPhonesEvent>(_onGetPhones);
  }
}
