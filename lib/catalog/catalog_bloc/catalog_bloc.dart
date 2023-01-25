import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../phone_item_model.dart';

part 'catalog_event.dart';
part 'catalog_state.dart';
part 'catalog_bloc.freezed.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {

  CatalogBloc() : super(const CatalogState()) {
    on<GetPhonesList>(_onGetPhonesList);
  }

  void _onGetPhonesList(event, emit) async {
    await Future.delayed(const Duration(seconds: 1));
    final phoneList = PhoneItem.getList();
    emit(state.copyWith(phones: phoneList));
  }

}
