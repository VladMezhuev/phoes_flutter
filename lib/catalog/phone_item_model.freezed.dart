// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhoneItem {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  set isFavorite(bool value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneItemCopyWith<PhoneItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneItemCopyWith<$Res> {
  factory $PhoneItemCopyWith(PhoneItem value, $Res Function(PhoneItem) then) =
      _$PhoneItemCopyWithImpl<$Res, PhoneItem>;
  @useResult
  $Res call({int id, String title, String image, bool isFavorite});
}

/// @nodoc
class _$PhoneItemCopyWithImpl<$Res, $Val extends PhoneItem>
    implements $PhoneItemCopyWith<$Res> {
  _$PhoneItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? isFavorite = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhoneItemCopyWith<$Res> implements $PhoneItemCopyWith<$Res> {
  factory _$$_PhoneItemCopyWith(
          _$_PhoneItem value, $Res Function(_$_PhoneItem) then) =
      __$$_PhoneItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String image, bool isFavorite});
}

/// @nodoc
class __$$_PhoneItemCopyWithImpl<$Res>
    extends _$PhoneItemCopyWithImpl<$Res, _$_PhoneItem>
    implements _$$_PhoneItemCopyWith<$Res> {
  __$$_PhoneItemCopyWithImpl(
      _$_PhoneItem _value, $Res Function(_$_PhoneItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? isFavorite = null,
  }) {
    return _then(_$_PhoneItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PhoneItem implements _PhoneItem {
  _$_PhoneItem(
      {required this.id,
      required this.title,
      required this.image,
      this.isFavorite = false});

  @override
  final int id;
  @override
  final String title;
  @override
  final String image;
  @override
  @JsonKey()
  bool isFavorite;

  @override
  String toString() {
    return 'PhoneItem(id: $id, title: $title, image: $image, isFavorite: $isFavorite)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneItemCopyWith<_$_PhoneItem> get copyWith =>
      __$$_PhoneItemCopyWithImpl<_$_PhoneItem>(this, _$identity);
}

abstract class _PhoneItem implements PhoneItem {
  factory _PhoneItem(
      {required final int id,
      required final String title,
      required final String image,
      bool isFavorite}) = _$_PhoneItem;

  @override
  int get id;
  @override
  String get title;
  @override
  String get image;
  @override
  bool get isFavorite;
  set isFavorite(bool value);
  @override
  @JsonKey(ignore: true)
  _$$_PhoneItemCopyWith<_$_PhoneItem> get copyWith =>
      throw _privateConstructorUsedError;
}
