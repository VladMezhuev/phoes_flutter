part of 'catalog_bloc.dart';

@immutable
abstract class CatalogState {}

class CatalogInitial extends CatalogState {}

class CatalogPhonesState extends CatalogState {
  final List<PhoneItem> phones;

  CatalogPhonesState(this.phones);
}

class CatalogLoadingState extends CatalogState {}
