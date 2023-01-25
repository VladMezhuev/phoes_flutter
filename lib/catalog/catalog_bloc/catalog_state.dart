part of 'catalog_bloc.dart';

@freezed
class CatalogState with _$CatalogState {
  const factory CatalogState([
    @Default([]) List<PhoneItem> phones,
  ]) = _CatalogState;
}
