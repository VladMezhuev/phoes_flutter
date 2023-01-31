import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phone_app/data/phones_repository.dart';

import '../phone_item_model.dart';

part 'catalog_event.dart';
part 'catalog_state.dart';
part 'catalog_bloc.freezed.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  final PhonesRepository phonesRepository;

  CatalogBloc({required this.phonesRepository}) : super(const CatalogState()) {
    on<GetPhonesList>(_onGetPhonesList);
    on<TogglePhoneFavorite>(_onTogglePhoneFavorite);
  }

  void _onGetPhonesList(event, emit) async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(seconds: 1));
    emit(state.copyWith(isLoading: false));
    final phoneList = phonesRepository.getPhones();
    emit(state.copyWith(phones: phoneList));
  }

  void _onTogglePhoneFavorite(event, emit) {
    final updateList = state.phones.map((e) =>
      e.id == event.id
        ? PhoneItem(id: e.id, title: e.title, image: e.image, isFavorite: !e.isFavorite)
        // ? PhoneItem.copyWith(isFavorite: !e.isFavorite)
        : e
    ).toList();
    emit(state.copyWith(phones: updateList));
  }

}
