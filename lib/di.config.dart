// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:phone_app/data/order_repo.dart' as _i4;
import 'package:phone_app/data/phones_repository.dart' as _i5;
import 'package:phone_app/data/shared_pref.dart' as _i3;
import 'package:phone_app/screens/catalog/catalog_bloc/catalog_bloc.dart'
    as _i6;
import 'package:phone_app/screens/order/order_bloc/order_bloc.dart' as _i7;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.AppPreferences>(_i3.AppPreferences());
    gh.singleton<_i4.OrderRepository>(_i4.OrderRepository());
    gh.singleton<_i5.PhonesRepository>(_i5.PhonesRepository());
    gh.factory<_i6.CatalogBloc>(() => _i6.CatalogBloc(
          phonesRepository: gh<_i5.PhonesRepository>(),
          appPreferences: gh<_i3.AppPreferences>(),
        ));
    gh.factory<_i7.OrderBloc>(
        () => _i7.OrderBloc(orderRepository: gh<_i4.OrderRepository>()));
    return this;
  }
}
