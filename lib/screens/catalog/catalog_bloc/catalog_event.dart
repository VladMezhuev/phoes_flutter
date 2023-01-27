part of 'catalog_bloc.dart';

@freezed
class CatalogEvent with _$CatalogEvent {
  const factory CatalogEvent.getPhonesList() = GetPhonesList;
  const factory CatalogEvent.togglePhoneFavorite(int id) = TogglePhoneFavorite;
}
