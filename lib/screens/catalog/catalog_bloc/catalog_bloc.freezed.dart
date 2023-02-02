// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CatalogEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPhonesList,
    required TResult Function(int id) togglePhoneFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPhonesList,
    TResult? Function(int id)? togglePhoneFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPhonesList,
    TResult Function(int id)? togglePhoneFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPhonesList value) getPhonesList,
    required TResult Function(TogglePhoneFavorite value) togglePhoneFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPhonesList value)? getPhonesList,
    TResult? Function(TogglePhoneFavorite value)? togglePhoneFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPhonesList value)? getPhonesList,
    TResult Function(TogglePhoneFavorite value)? togglePhoneFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogEventCopyWith<$Res> {
  factory $CatalogEventCopyWith(
          CatalogEvent value, $Res Function(CatalogEvent) then) =
      _$CatalogEventCopyWithImpl<$Res, CatalogEvent>;
}

/// @nodoc
class _$CatalogEventCopyWithImpl<$Res, $Val extends CatalogEvent>
    implements $CatalogEventCopyWith<$Res> {
  _$CatalogEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPhonesListCopyWith<$Res> {
  factory _$$GetPhonesListCopyWith(
          _$GetPhonesList value, $Res Function(_$GetPhonesList) then) =
      __$$GetPhonesListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPhonesListCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res, _$GetPhonesList>
    implements _$$GetPhonesListCopyWith<$Res> {
  __$$GetPhonesListCopyWithImpl(
      _$GetPhonesList _value, $Res Function(_$GetPhonesList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPhonesList implements GetPhonesList {
  const _$GetPhonesList();

  @override
  String toString() {
    return 'CatalogEvent.getPhonesList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPhonesList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPhonesList,
    required TResult Function(int id) togglePhoneFavorite,
  }) {
    return getPhonesList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPhonesList,
    TResult? Function(int id)? togglePhoneFavorite,
  }) {
    return getPhonesList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPhonesList,
    TResult Function(int id)? togglePhoneFavorite,
    required TResult orElse(),
  }) {
    if (getPhonesList != null) {
      return getPhonesList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPhonesList value) getPhonesList,
    required TResult Function(TogglePhoneFavorite value) togglePhoneFavorite,
  }) {
    return getPhonesList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPhonesList value)? getPhonesList,
    TResult? Function(TogglePhoneFavorite value)? togglePhoneFavorite,
  }) {
    return getPhonesList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPhonesList value)? getPhonesList,
    TResult Function(TogglePhoneFavorite value)? togglePhoneFavorite,
    required TResult orElse(),
  }) {
    if (getPhonesList != null) {
      return getPhonesList(this);
    }
    return orElse();
  }
}

abstract class GetPhonesList implements CatalogEvent {
  const factory GetPhonesList() = _$GetPhonesList;
}

/// @nodoc
abstract class _$$TogglePhoneFavoriteCopyWith<$Res> {
  factory _$$TogglePhoneFavoriteCopyWith(_$TogglePhoneFavorite value,
          $Res Function(_$TogglePhoneFavorite) then) =
      __$$TogglePhoneFavoriteCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$TogglePhoneFavoriteCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res, _$TogglePhoneFavorite>
    implements _$$TogglePhoneFavoriteCopyWith<$Res> {
  __$$TogglePhoneFavoriteCopyWithImpl(
      _$TogglePhoneFavorite _value, $Res Function(_$TogglePhoneFavorite) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$TogglePhoneFavorite(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TogglePhoneFavorite implements TogglePhoneFavorite {
  const _$TogglePhoneFavorite(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'CatalogEvent.togglePhoneFavorite(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TogglePhoneFavorite &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TogglePhoneFavoriteCopyWith<_$TogglePhoneFavorite> get copyWith =>
      __$$TogglePhoneFavoriteCopyWithImpl<_$TogglePhoneFavorite>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPhonesList,
    required TResult Function(int id) togglePhoneFavorite,
  }) {
    return togglePhoneFavorite(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPhonesList,
    TResult? Function(int id)? togglePhoneFavorite,
  }) {
    return togglePhoneFavorite?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPhonesList,
    TResult Function(int id)? togglePhoneFavorite,
    required TResult orElse(),
  }) {
    if (togglePhoneFavorite != null) {
      return togglePhoneFavorite(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPhonesList value) getPhonesList,
    required TResult Function(TogglePhoneFavorite value) togglePhoneFavorite,
  }) {
    return togglePhoneFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPhonesList value)? getPhonesList,
    TResult? Function(TogglePhoneFavorite value)? togglePhoneFavorite,
  }) {
    return togglePhoneFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPhonesList value)? getPhonesList,
    TResult Function(TogglePhoneFavorite value)? togglePhoneFavorite,
    required TResult orElse(),
  }) {
    if (togglePhoneFavorite != null) {
      return togglePhoneFavorite(this);
    }
    return orElse();
  }
}

abstract class TogglePhoneFavorite implements CatalogEvent {
  const factory TogglePhoneFavorite(final int id) = _$TogglePhoneFavorite;

  int get id;
  @JsonKey(ignore: true)
  _$$TogglePhoneFavoriteCopyWith<_$TogglePhoneFavorite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CatalogState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<PhoneItem> get phones => throw _privateConstructorUsedError;
  List<int> get favoritePhones => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatalogStateCopyWith<CatalogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogStateCopyWith<$Res> {
  factory $CatalogStateCopyWith(
          CatalogState value, $Res Function(CatalogState) then) =
      _$CatalogStateCopyWithImpl<$Res, CatalogState>;
  @useResult
  $Res call({bool isLoading, List<PhoneItem> phones, List<int> favoritePhones});
}

/// @nodoc
class _$CatalogStateCopyWithImpl<$Res, $Val extends CatalogState>
    implements $CatalogStateCopyWith<$Res> {
  _$CatalogStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? phones = null,
    Object? favoritePhones = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      phones: null == phones
          ? _value.phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<PhoneItem>,
      favoritePhones: null == favoritePhones
          ? _value.favoritePhones
          : favoritePhones // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CatalogStateCopyWith<$Res>
    implements $CatalogStateCopyWith<$Res> {
  factory _$$_CatalogStateCopyWith(
          _$_CatalogState value, $Res Function(_$_CatalogState) then) =
      __$$_CatalogStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<PhoneItem> phones, List<int> favoritePhones});
}

/// @nodoc
class __$$_CatalogStateCopyWithImpl<$Res>
    extends _$CatalogStateCopyWithImpl<$Res, _$_CatalogState>
    implements _$$_CatalogStateCopyWith<$Res> {
  __$$_CatalogStateCopyWithImpl(
      _$_CatalogState _value, $Res Function(_$_CatalogState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? phones = null,
    Object? favoritePhones = null,
  }) {
    return _then(_$_CatalogState(
      null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      null == phones
          ? _value._phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<PhoneItem>,
      null == favoritePhones
          ? _value._favoritePhones
          : favoritePhones // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_CatalogState implements _CatalogState {
  const _$_CatalogState(
      [this.isLoading = false,
      final List<PhoneItem> phones = const [],
      final List<int> favoritePhones = const []])
      : _phones = phones,
        _favoritePhones = favoritePhones;

  @override
  @JsonKey()
  final bool isLoading;
  final List<PhoneItem> _phones;
  @override
  @JsonKey()
  List<PhoneItem> get phones {
    if (_phones is EqualUnmodifiableListView) return _phones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_phones);
  }

  final List<int> _favoritePhones;
  @override
  @JsonKey()
  List<int> get favoritePhones {
    if (_favoritePhones is EqualUnmodifiableListView) return _favoritePhones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoritePhones);
  }

  @override
  String toString() {
    return 'CatalogState(isLoading: $isLoading, phones: $phones, favoritePhones: $favoritePhones)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatalogState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._phones, _phones) &&
            const DeepCollectionEquality()
                .equals(other._favoritePhones, _favoritePhones));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_phones),
      const DeepCollectionEquality().hash(_favoritePhones));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CatalogStateCopyWith<_$_CatalogState> get copyWith =>
      __$$_CatalogStateCopyWithImpl<_$_CatalogState>(this, _$identity);
}

abstract class _CatalogState implements CatalogState {
  const factory _CatalogState(
      [final bool isLoading,
      final List<PhoneItem> phones,
      final List<int> favoritePhones]) = _$_CatalogState;

  @override
  bool get isLoading;
  @override
  List<PhoneItem> get phones;
  @override
  List<int> get favoritePhones;
  @override
  @JsonKey(ignore: true)
  _$$_CatalogStateCopyWith<_$_CatalogState> get copyWith =>
      throw _privateConstructorUsedError;
}
