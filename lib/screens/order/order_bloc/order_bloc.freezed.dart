// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String color) getProductColor,
    required TResult Function(String name) getUserName,
    required TResult Function(String phone) getUserPhone,
    required TResult Function(String email) getUserEmail,
    required TResult Function(String delivery) getDeliveryMethod,
    required TResult Function(bool needToCall) getNeedToCall,
    required TResult Function(String comment) getComment,
    required TResult Function() createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String color)? getProductColor,
    TResult? Function(String name)? getUserName,
    TResult? Function(String phone)? getUserPhone,
    TResult? Function(String email)? getUserEmail,
    TResult? Function(String delivery)? getDeliveryMethod,
    TResult? Function(bool needToCall)? getNeedToCall,
    TResult? Function(String comment)? getComment,
    TResult? Function()? createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String color)? getProductColor,
    TResult Function(String name)? getUserName,
    TResult Function(String phone)? getUserPhone,
    TResult Function(String email)? getUserEmail,
    TResult Function(String delivery)? getDeliveryMethod,
    TResult Function(bool needToCall)? getNeedToCall,
    TResult Function(String comment)? getComment,
    TResult Function()? createOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProductColor value) getProductColor,
    required TResult Function(GetUserName value) getUserName,
    required TResult Function(GetUserPhone value) getUserPhone,
    required TResult Function(GetUserEmail value) getUserEmail,
    required TResult Function(GetDeliveryMethod value) getDeliveryMethod,
    required TResult Function(GetNeedToCall value) getNeedToCall,
    required TResult Function(GetComment value) getComment,
    required TResult Function(CreateOrder value) createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProductColor value)? getProductColor,
    TResult? Function(GetUserName value)? getUserName,
    TResult? Function(GetUserPhone value)? getUserPhone,
    TResult? Function(GetUserEmail value)? getUserEmail,
    TResult? Function(GetDeliveryMethod value)? getDeliveryMethod,
    TResult? Function(GetNeedToCall value)? getNeedToCall,
    TResult? Function(GetComment value)? getComment,
    TResult? Function(CreateOrder value)? createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProductColor value)? getProductColor,
    TResult Function(GetUserName value)? getUserName,
    TResult Function(GetUserPhone value)? getUserPhone,
    TResult Function(GetUserEmail value)? getUserEmail,
    TResult Function(GetDeliveryMethod value)? getDeliveryMethod,
    TResult Function(GetNeedToCall value)? getNeedToCall,
    TResult Function(GetComment value)? getComment,
    TResult Function(CreateOrder value)? createOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetProductColorCopyWith<$Res> {
  factory _$$GetProductColorCopyWith(
          _$GetProductColor value, $Res Function(_$GetProductColor) then) =
      __$$GetProductColorCopyWithImpl<$Res>;
  @useResult
  $Res call({String color});
}

/// @nodoc
class __$$GetProductColorCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$GetProductColor>
    implements _$$GetProductColorCopyWith<$Res> {
  __$$GetProductColorCopyWithImpl(
      _$GetProductColor _value, $Res Function(_$GetProductColor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$GetProductColor(
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetProductColor implements GetProductColor {
  const _$GetProductColor(this.color);

  @override
  final String color;

  @override
  String toString() {
    return 'OrderEvent.getProductColor(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductColor &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductColorCopyWith<_$GetProductColor> get copyWith =>
      __$$GetProductColorCopyWithImpl<_$GetProductColor>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String color) getProductColor,
    required TResult Function(String name) getUserName,
    required TResult Function(String phone) getUserPhone,
    required TResult Function(String email) getUserEmail,
    required TResult Function(String delivery) getDeliveryMethod,
    required TResult Function(bool needToCall) getNeedToCall,
    required TResult Function(String comment) getComment,
    required TResult Function() createOrder,
  }) {
    return getProductColor(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String color)? getProductColor,
    TResult? Function(String name)? getUserName,
    TResult? Function(String phone)? getUserPhone,
    TResult? Function(String email)? getUserEmail,
    TResult? Function(String delivery)? getDeliveryMethod,
    TResult? Function(bool needToCall)? getNeedToCall,
    TResult? Function(String comment)? getComment,
    TResult? Function()? createOrder,
  }) {
    return getProductColor?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String color)? getProductColor,
    TResult Function(String name)? getUserName,
    TResult Function(String phone)? getUserPhone,
    TResult Function(String email)? getUserEmail,
    TResult Function(String delivery)? getDeliveryMethod,
    TResult Function(bool needToCall)? getNeedToCall,
    TResult Function(String comment)? getComment,
    TResult Function()? createOrder,
    required TResult orElse(),
  }) {
    if (getProductColor != null) {
      return getProductColor(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProductColor value) getProductColor,
    required TResult Function(GetUserName value) getUserName,
    required TResult Function(GetUserPhone value) getUserPhone,
    required TResult Function(GetUserEmail value) getUserEmail,
    required TResult Function(GetDeliveryMethod value) getDeliveryMethod,
    required TResult Function(GetNeedToCall value) getNeedToCall,
    required TResult Function(GetComment value) getComment,
    required TResult Function(CreateOrder value) createOrder,
  }) {
    return getProductColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProductColor value)? getProductColor,
    TResult? Function(GetUserName value)? getUserName,
    TResult? Function(GetUserPhone value)? getUserPhone,
    TResult? Function(GetUserEmail value)? getUserEmail,
    TResult? Function(GetDeliveryMethod value)? getDeliveryMethod,
    TResult? Function(GetNeedToCall value)? getNeedToCall,
    TResult? Function(GetComment value)? getComment,
    TResult? Function(CreateOrder value)? createOrder,
  }) {
    return getProductColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProductColor value)? getProductColor,
    TResult Function(GetUserName value)? getUserName,
    TResult Function(GetUserPhone value)? getUserPhone,
    TResult Function(GetUserEmail value)? getUserEmail,
    TResult Function(GetDeliveryMethod value)? getDeliveryMethod,
    TResult Function(GetNeedToCall value)? getNeedToCall,
    TResult Function(GetComment value)? getComment,
    TResult Function(CreateOrder value)? createOrder,
    required TResult orElse(),
  }) {
    if (getProductColor != null) {
      return getProductColor(this);
    }
    return orElse();
  }
}

abstract class GetProductColor implements OrderEvent {
  const factory GetProductColor(final String color) = _$GetProductColor;

  String get color;
  @JsonKey(ignore: true)
  _$$GetProductColorCopyWith<_$GetProductColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserNameCopyWith<$Res> {
  factory _$$GetUserNameCopyWith(
          _$GetUserName value, $Res Function(_$GetUserName) then) =
      __$$GetUserNameCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$GetUserNameCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$GetUserName>
    implements _$$GetUserNameCopyWith<$Res> {
  __$$GetUserNameCopyWithImpl(
      _$GetUserName _value, $Res Function(_$GetUserName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$GetUserName(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUserName implements GetUserName {
  const _$GetUserName(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'OrderEvent.getUserName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserName &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserNameCopyWith<_$GetUserName> get copyWith =>
      __$$GetUserNameCopyWithImpl<_$GetUserName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String color) getProductColor,
    required TResult Function(String name) getUserName,
    required TResult Function(String phone) getUserPhone,
    required TResult Function(String email) getUserEmail,
    required TResult Function(String delivery) getDeliveryMethod,
    required TResult Function(bool needToCall) getNeedToCall,
    required TResult Function(String comment) getComment,
    required TResult Function() createOrder,
  }) {
    return getUserName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String color)? getProductColor,
    TResult? Function(String name)? getUserName,
    TResult? Function(String phone)? getUserPhone,
    TResult? Function(String email)? getUserEmail,
    TResult? Function(String delivery)? getDeliveryMethod,
    TResult? Function(bool needToCall)? getNeedToCall,
    TResult? Function(String comment)? getComment,
    TResult? Function()? createOrder,
  }) {
    return getUserName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String color)? getProductColor,
    TResult Function(String name)? getUserName,
    TResult Function(String phone)? getUserPhone,
    TResult Function(String email)? getUserEmail,
    TResult Function(String delivery)? getDeliveryMethod,
    TResult Function(bool needToCall)? getNeedToCall,
    TResult Function(String comment)? getComment,
    TResult Function()? createOrder,
    required TResult orElse(),
  }) {
    if (getUserName != null) {
      return getUserName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProductColor value) getProductColor,
    required TResult Function(GetUserName value) getUserName,
    required TResult Function(GetUserPhone value) getUserPhone,
    required TResult Function(GetUserEmail value) getUserEmail,
    required TResult Function(GetDeliveryMethod value) getDeliveryMethod,
    required TResult Function(GetNeedToCall value) getNeedToCall,
    required TResult Function(GetComment value) getComment,
    required TResult Function(CreateOrder value) createOrder,
  }) {
    return getUserName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProductColor value)? getProductColor,
    TResult? Function(GetUserName value)? getUserName,
    TResult? Function(GetUserPhone value)? getUserPhone,
    TResult? Function(GetUserEmail value)? getUserEmail,
    TResult? Function(GetDeliveryMethod value)? getDeliveryMethod,
    TResult? Function(GetNeedToCall value)? getNeedToCall,
    TResult? Function(GetComment value)? getComment,
    TResult? Function(CreateOrder value)? createOrder,
  }) {
    return getUserName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProductColor value)? getProductColor,
    TResult Function(GetUserName value)? getUserName,
    TResult Function(GetUserPhone value)? getUserPhone,
    TResult Function(GetUserEmail value)? getUserEmail,
    TResult Function(GetDeliveryMethod value)? getDeliveryMethod,
    TResult Function(GetNeedToCall value)? getNeedToCall,
    TResult Function(GetComment value)? getComment,
    TResult Function(CreateOrder value)? createOrder,
    required TResult orElse(),
  }) {
    if (getUserName != null) {
      return getUserName(this);
    }
    return orElse();
  }
}

abstract class GetUserName implements OrderEvent {
  const factory GetUserName(final String name) = _$GetUserName;

  String get name;
  @JsonKey(ignore: true)
  _$$GetUserNameCopyWith<_$GetUserName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserPhoneCopyWith<$Res> {
  factory _$$GetUserPhoneCopyWith(
          _$GetUserPhone value, $Res Function(_$GetUserPhone) then) =
      __$$GetUserPhoneCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$GetUserPhoneCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$GetUserPhone>
    implements _$$GetUserPhoneCopyWith<$Res> {
  __$$GetUserPhoneCopyWithImpl(
      _$GetUserPhone _value, $Res Function(_$GetUserPhone) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$GetUserPhone(
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUserPhone implements GetUserPhone {
  const _$GetUserPhone(this.phone);

  @override
  final String phone;

  @override
  String toString() {
    return 'OrderEvent.getUserPhone(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserPhone &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserPhoneCopyWith<_$GetUserPhone> get copyWith =>
      __$$GetUserPhoneCopyWithImpl<_$GetUserPhone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String color) getProductColor,
    required TResult Function(String name) getUserName,
    required TResult Function(String phone) getUserPhone,
    required TResult Function(String email) getUserEmail,
    required TResult Function(String delivery) getDeliveryMethod,
    required TResult Function(bool needToCall) getNeedToCall,
    required TResult Function(String comment) getComment,
    required TResult Function() createOrder,
  }) {
    return getUserPhone(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String color)? getProductColor,
    TResult? Function(String name)? getUserName,
    TResult? Function(String phone)? getUserPhone,
    TResult? Function(String email)? getUserEmail,
    TResult? Function(String delivery)? getDeliveryMethod,
    TResult? Function(bool needToCall)? getNeedToCall,
    TResult? Function(String comment)? getComment,
    TResult? Function()? createOrder,
  }) {
    return getUserPhone?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String color)? getProductColor,
    TResult Function(String name)? getUserName,
    TResult Function(String phone)? getUserPhone,
    TResult Function(String email)? getUserEmail,
    TResult Function(String delivery)? getDeliveryMethod,
    TResult Function(bool needToCall)? getNeedToCall,
    TResult Function(String comment)? getComment,
    TResult Function()? createOrder,
    required TResult orElse(),
  }) {
    if (getUserPhone != null) {
      return getUserPhone(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProductColor value) getProductColor,
    required TResult Function(GetUserName value) getUserName,
    required TResult Function(GetUserPhone value) getUserPhone,
    required TResult Function(GetUserEmail value) getUserEmail,
    required TResult Function(GetDeliveryMethod value) getDeliveryMethod,
    required TResult Function(GetNeedToCall value) getNeedToCall,
    required TResult Function(GetComment value) getComment,
    required TResult Function(CreateOrder value) createOrder,
  }) {
    return getUserPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProductColor value)? getProductColor,
    TResult? Function(GetUserName value)? getUserName,
    TResult? Function(GetUserPhone value)? getUserPhone,
    TResult? Function(GetUserEmail value)? getUserEmail,
    TResult? Function(GetDeliveryMethod value)? getDeliveryMethod,
    TResult? Function(GetNeedToCall value)? getNeedToCall,
    TResult? Function(GetComment value)? getComment,
    TResult? Function(CreateOrder value)? createOrder,
  }) {
    return getUserPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProductColor value)? getProductColor,
    TResult Function(GetUserName value)? getUserName,
    TResult Function(GetUserPhone value)? getUserPhone,
    TResult Function(GetUserEmail value)? getUserEmail,
    TResult Function(GetDeliveryMethod value)? getDeliveryMethod,
    TResult Function(GetNeedToCall value)? getNeedToCall,
    TResult Function(GetComment value)? getComment,
    TResult Function(CreateOrder value)? createOrder,
    required TResult orElse(),
  }) {
    if (getUserPhone != null) {
      return getUserPhone(this);
    }
    return orElse();
  }
}

abstract class GetUserPhone implements OrderEvent {
  const factory GetUserPhone(final String phone) = _$GetUserPhone;

  String get phone;
  @JsonKey(ignore: true)
  _$$GetUserPhoneCopyWith<_$GetUserPhone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserEmailCopyWith<$Res> {
  factory _$$GetUserEmailCopyWith(
          _$GetUserEmail value, $Res Function(_$GetUserEmail) then) =
      __$$GetUserEmailCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$GetUserEmailCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$GetUserEmail>
    implements _$$GetUserEmailCopyWith<$Res> {
  __$$GetUserEmailCopyWithImpl(
      _$GetUserEmail _value, $Res Function(_$GetUserEmail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$GetUserEmail(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUserEmail implements GetUserEmail {
  const _$GetUserEmail(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'OrderEvent.getUserEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserEmail &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserEmailCopyWith<_$GetUserEmail> get copyWith =>
      __$$GetUserEmailCopyWithImpl<_$GetUserEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String color) getProductColor,
    required TResult Function(String name) getUserName,
    required TResult Function(String phone) getUserPhone,
    required TResult Function(String email) getUserEmail,
    required TResult Function(String delivery) getDeliveryMethod,
    required TResult Function(bool needToCall) getNeedToCall,
    required TResult Function(String comment) getComment,
    required TResult Function() createOrder,
  }) {
    return getUserEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String color)? getProductColor,
    TResult? Function(String name)? getUserName,
    TResult? Function(String phone)? getUserPhone,
    TResult? Function(String email)? getUserEmail,
    TResult? Function(String delivery)? getDeliveryMethod,
    TResult? Function(bool needToCall)? getNeedToCall,
    TResult? Function(String comment)? getComment,
    TResult? Function()? createOrder,
  }) {
    return getUserEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String color)? getProductColor,
    TResult Function(String name)? getUserName,
    TResult Function(String phone)? getUserPhone,
    TResult Function(String email)? getUserEmail,
    TResult Function(String delivery)? getDeliveryMethod,
    TResult Function(bool needToCall)? getNeedToCall,
    TResult Function(String comment)? getComment,
    TResult Function()? createOrder,
    required TResult orElse(),
  }) {
    if (getUserEmail != null) {
      return getUserEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProductColor value) getProductColor,
    required TResult Function(GetUserName value) getUserName,
    required TResult Function(GetUserPhone value) getUserPhone,
    required TResult Function(GetUserEmail value) getUserEmail,
    required TResult Function(GetDeliveryMethod value) getDeliveryMethod,
    required TResult Function(GetNeedToCall value) getNeedToCall,
    required TResult Function(GetComment value) getComment,
    required TResult Function(CreateOrder value) createOrder,
  }) {
    return getUserEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProductColor value)? getProductColor,
    TResult? Function(GetUserName value)? getUserName,
    TResult? Function(GetUserPhone value)? getUserPhone,
    TResult? Function(GetUserEmail value)? getUserEmail,
    TResult? Function(GetDeliveryMethod value)? getDeliveryMethod,
    TResult? Function(GetNeedToCall value)? getNeedToCall,
    TResult? Function(GetComment value)? getComment,
    TResult? Function(CreateOrder value)? createOrder,
  }) {
    return getUserEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProductColor value)? getProductColor,
    TResult Function(GetUserName value)? getUserName,
    TResult Function(GetUserPhone value)? getUserPhone,
    TResult Function(GetUserEmail value)? getUserEmail,
    TResult Function(GetDeliveryMethod value)? getDeliveryMethod,
    TResult Function(GetNeedToCall value)? getNeedToCall,
    TResult Function(GetComment value)? getComment,
    TResult Function(CreateOrder value)? createOrder,
    required TResult orElse(),
  }) {
    if (getUserEmail != null) {
      return getUserEmail(this);
    }
    return orElse();
  }
}

abstract class GetUserEmail implements OrderEvent {
  const factory GetUserEmail(final String email) = _$GetUserEmail;

  String get email;
  @JsonKey(ignore: true)
  _$$GetUserEmailCopyWith<_$GetUserEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDeliveryMethodCopyWith<$Res> {
  factory _$$GetDeliveryMethodCopyWith(
          _$GetDeliveryMethod value, $Res Function(_$GetDeliveryMethod) then) =
      __$$GetDeliveryMethodCopyWithImpl<$Res>;
  @useResult
  $Res call({String delivery});
}

/// @nodoc
class __$$GetDeliveryMethodCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$GetDeliveryMethod>
    implements _$$GetDeliveryMethodCopyWith<$Res> {
  __$$GetDeliveryMethodCopyWithImpl(
      _$GetDeliveryMethod _value, $Res Function(_$GetDeliveryMethod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? delivery = null,
  }) {
    return _then(_$GetDeliveryMethod(
      null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetDeliveryMethod implements GetDeliveryMethod {
  const _$GetDeliveryMethod(this.delivery);

  @override
  final String delivery;

  @override
  String toString() {
    return 'OrderEvent.getDeliveryMethod(delivery: $delivery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDeliveryMethod &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, delivery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDeliveryMethodCopyWith<_$GetDeliveryMethod> get copyWith =>
      __$$GetDeliveryMethodCopyWithImpl<_$GetDeliveryMethod>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String color) getProductColor,
    required TResult Function(String name) getUserName,
    required TResult Function(String phone) getUserPhone,
    required TResult Function(String email) getUserEmail,
    required TResult Function(String delivery) getDeliveryMethod,
    required TResult Function(bool needToCall) getNeedToCall,
    required TResult Function(String comment) getComment,
    required TResult Function() createOrder,
  }) {
    return getDeliveryMethod(delivery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String color)? getProductColor,
    TResult? Function(String name)? getUserName,
    TResult? Function(String phone)? getUserPhone,
    TResult? Function(String email)? getUserEmail,
    TResult? Function(String delivery)? getDeliveryMethod,
    TResult? Function(bool needToCall)? getNeedToCall,
    TResult? Function(String comment)? getComment,
    TResult? Function()? createOrder,
  }) {
    return getDeliveryMethod?.call(delivery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String color)? getProductColor,
    TResult Function(String name)? getUserName,
    TResult Function(String phone)? getUserPhone,
    TResult Function(String email)? getUserEmail,
    TResult Function(String delivery)? getDeliveryMethod,
    TResult Function(bool needToCall)? getNeedToCall,
    TResult Function(String comment)? getComment,
    TResult Function()? createOrder,
    required TResult orElse(),
  }) {
    if (getDeliveryMethod != null) {
      return getDeliveryMethod(delivery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProductColor value) getProductColor,
    required TResult Function(GetUserName value) getUserName,
    required TResult Function(GetUserPhone value) getUserPhone,
    required TResult Function(GetUserEmail value) getUserEmail,
    required TResult Function(GetDeliveryMethod value) getDeliveryMethod,
    required TResult Function(GetNeedToCall value) getNeedToCall,
    required TResult Function(GetComment value) getComment,
    required TResult Function(CreateOrder value) createOrder,
  }) {
    return getDeliveryMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProductColor value)? getProductColor,
    TResult? Function(GetUserName value)? getUserName,
    TResult? Function(GetUserPhone value)? getUserPhone,
    TResult? Function(GetUserEmail value)? getUserEmail,
    TResult? Function(GetDeliveryMethod value)? getDeliveryMethod,
    TResult? Function(GetNeedToCall value)? getNeedToCall,
    TResult? Function(GetComment value)? getComment,
    TResult? Function(CreateOrder value)? createOrder,
  }) {
    return getDeliveryMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProductColor value)? getProductColor,
    TResult Function(GetUserName value)? getUserName,
    TResult Function(GetUserPhone value)? getUserPhone,
    TResult Function(GetUserEmail value)? getUserEmail,
    TResult Function(GetDeliveryMethod value)? getDeliveryMethod,
    TResult Function(GetNeedToCall value)? getNeedToCall,
    TResult Function(GetComment value)? getComment,
    TResult Function(CreateOrder value)? createOrder,
    required TResult orElse(),
  }) {
    if (getDeliveryMethod != null) {
      return getDeliveryMethod(this);
    }
    return orElse();
  }
}

abstract class GetDeliveryMethod implements OrderEvent {
  const factory GetDeliveryMethod(final String delivery) = _$GetDeliveryMethod;

  String get delivery;
  @JsonKey(ignore: true)
  _$$GetDeliveryMethodCopyWith<_$GetDeliveryMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetNeedToCallCopyWith<$Res> {
  factory _$$GetNeedToCallCopyWith(
          _$GetNeedToCall value, $Res Function(_$GetNeedToCall) then) =
      __$$GetNeedToCallCopyWithImpl<$Res>;
  @useResult
  $Res call({bool needToCall});
}

/// @nodoc
class __$$GetNeedToCallCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$GetNeedToCall>
    implements _$$GetNeedToCallCopyWith<$Res> {
  __$$GetNeedToCallCopyWithImpl(
      _$GetNeedToCall _value, $Res Function(_$GetNeedToCall) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? needToCall = null,
  }) {
    return _then(_$GetNeedToCall(
      null == needToCall
          ? _value.needToCall
          : needToCall // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetNeedToCall implements GetNeedToCall {
  const _$GetNeedToCall(this.needToCall);

  @override
  final bool needToCall;

  @override
  String toString() {
    return 'OrderEvent.getNeedToCall(needToCall: $needToCall)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNeedToCall &&
            (identical(other.needToCall, needToCall) ||
                other.needToCall == needToCall));
  }

  @override
  int get hashCode => Object.hash(runtimeType, needToCall);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNeedToCallCopyWith<_$GetNeedToCall> get copyWith =>
      __$$GetNeedToCallCopyWithImpl<_$GetNeedToCall>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String color) getProductColor,
    required TResult Function(String name) getUserName,
    required TResult Function(String phone) getUserPhone,
    required TResult Function(String email) getUserEmail,
    required TResult Function(String delivery) getDeliveryMethod,
    required TResult Function(bool needToCall) getNeedToCall,
    required TResult Function(String comment) getComment,
    required TResult Function() createOrder,
  }) {
    return getNeedToCall(needToCall);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String color)? getProductColor,
    TResult? Function(String name)? getUserName,
    TResult? Function(String phone)? getUserPhone,
    TResult? Function(String email)? getUserEmail,
    TResult? Function(String delivery)? getDeliveryMethod,
    TResult? Function(bool needToCall)? getNeedToCall,
    TResult? Function(String comment)? getComment,
    TResult? Function()? createOrder,
  }) {
    return getNeedToCall?.call(needToCall);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String color)? getProductColor,
    TResult Function(String name)? getUserName,
    TResult Function(String phone)? getUserPhone,
    TResult Function(String email)? getUserEmail,
    TResult Function(String delivery)? getDeliveryMethod,
    TResult Function(bool needToCall)? getNeedToCall,
    TResult Function(String comment)? getComment,
    TResult Function()? createOrder,
    required TResult orElse(),
  }) {
    if (getNeedToCall != null) {
      return getNeedToCall(needToCall);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProductColor value) getProductColor,
    required TResult Function(GetUserName value) getUserName,
    required TResult Function(GetUserPhone value) getUserPhone,
    required TResult Function(GetUserEmail value) getUserEmail,
    required TResult Function(GetDeliveryMethod value) getDeliveryMethod,
    required TResult Function(GetNeedToCall value) getNeedToCall,
    required TResult Function(GetComment value) getComment,
    required TResult Function(CreateOrder value) createOrder,
  }) {
    return getNeedToCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProductColor value)? getProductColor,
    TResult? Function(GetUserName value)? getUserName,
    TResult? Function(GetUserPhone value)? getUserPhone,
    TResult? Function(GetUserEmail value)? getUserEmail,
    TResult? Function(GetDeliveryMethod value)? getDeliveryMethod,
    TResult? Function(GetNeedToCall value)? getNeedToCall,
    TResult? Function(GetComment value)? getComment,
    TResult? Function(CreateOrder value)? createOrder,
  }) {
    return getNeedToCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProductColor value)? getProductColor,
    TResult Function(GetUserName value)? getUserName,
    TResult Function(GetUserPhone value)? getUserPhone,
    TResult Function(GetUserEmail value)? getUserEmail,
    TResult Function(GetDeliveryMethod value)? getDeliveryMethod,
    TResult Function(GetNeedToCall value)? getNeedToCall,
    TResult Function(GetComment value)? getComment,
    TResult Function(CreateOrder value)? createOrder,
    required TResult orElse(),
  }) {
    if (getNeedToCall != null) {
      return getNeedToCall(this);
    }
    return orElse();
  }
}

abstract class GetNeedToCall implements OrderEvent {
  const factory GetNeedToCall(final bool needToCall) = _$GetNeedToCall;

  bool get needToCall;
  @JsonKey(ignore: true)
  _$$GetNeedToCallCopyWith<_$GetNeedToCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCommentCopyWith<$Res> {
  factory _$$GetCommentCopyWith(
          _$GetComment value, $Res Function(_$GetComment) then) =
      __$$GetCommentCopyWithImpl<$Res>;
  @useResult
  $Res call({String comment});
}

/// @nodoc
class __$$GetCommentCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$GetComment>
    implements _$$GetCommentCopyWith<$Res> {
  __$$GetCommentCopyWithImpl(
      _$GetComment _value, $Res Function(_$GetComment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
  }) {
    return _then(_$GetComment(
      null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetComment implements GetComment {
  const _$GetComment(this.comment);

  @override
  final String comment;

  @override
  String toString() {
    return 'OrderEvent.getComment(comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetComment &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCommentCopyWith<_$GetComment> get copyWith =>
      __$$GetCommentCopyWithImpl<_$GetComment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String color) getProductColor,
    required TResult Function(String name) getUserName,
    required TResult Function(String phone) getUserPhone,
    required TResult Function(String email) getUserEmail,
    required TResult Function(String delivery) getDeliveryMethod,
    required TResult Function(bool needToCall) getNeedToCall,
    required TResult Function(String comment) getComment,
    required TResult Function() createOrder,
  }) {
    return getComment(comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String color)? getProductColor,
    TResult? Function(String name)? getUserName,
    TResult? Function(String phone)? getUserPhone,
    TResult? Function(String email)? getUserEmail,
    TResult? Function(String delivery)? getDeliveryMethod,
    TResult? Function(bool needToCall)? getNeedToCall,
    TResult? Function(String comment)? getComment,
    TResult? Function()? createOrder,
  }) {
    return getComment?.call(comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String color)? getProductColor,
    TResult Function(String name)? getUserName,
    TResult Function(String phone)? getUserPhone,
    TResult Function(String email)? getUserEmail,
    TResult Function(String delivery)? getDeliveryMethod,
    TResult Function(bool needToCall)? getNeedToCall,
    TResult Function(String comment)? getComment,
    TResult Function()? createOrder,
    required TResult orElse(),
  }) {
    if (getComment != null) {
      return getComment(comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProductColor value) getProductColor,
    required TResult Function(GetUserName value) getUserName,
    required TResult Function(GetUserPhone value) getUserPhone,
    required TResult Function(GetUserEmail value) getUserEmail,
    required TResult Function(GetDeliveryMethod value) getDeliveryMethod,
    required TResult Function(GetNeedToCall value) getNeedToCall,
    required TResult Function(GetComment value) getComment,
    required TResult Function(CreateOrder value) createOrder,
  }) {
    return getComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProductColor value)? getProductColor,
    TResult? Function(GetUserName value)? getUserName,
    TResult? Function(GetUserPhone value)? getUserPhone,
    TResult? Function(GetUserEmail value)? getUserEmail,
    TResult? Function(GetDeliveryMethod value)? getDeliveryMethod,
    TResult? Function(GetNeedToCall value)? getNeedToCall,
    TResult? Function(GetComment value)? getComment,
    TResult? Function(CreateOrder value)? createOrder,
  }) {
    return getComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProductColor value)? getProductColor,
    TResult Function(GetUserName value)? getUserName,
    TResult Function(GetUserPhone value)? getUserPhone,
    TResult Function(GetUserEmail value)? getUserEmail,
    TResult Function(GetDeliveryMethod value)? getDeliveryMethod,
    TResult Function(GetNeedToCall value)? getNeedToCall,
    TResult Function(GetComment value)? getComment,
    TResult Function(CreateOrder value)? createOrder,
    required TResult orElse(),
  }) {
    if (getComment != null) {
      return getComment(this);
    }
    return orElse();
  }
}

abstract class GetComment implements OrderEvent {
  const factory GetComment(final String comment) = _$GetComment;

  String get comment;
  @JsonKey(ignore: true)
  _$$GetCommentCopyWith<_$GetComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateOrderCopyWith<$Res> {
  factory _$$CreateOrderCopyWith(
          _$CreateOrder value, $Res Function(_$CreateOrder) then) =
      __$$CreateOrderCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateOrderCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$CreateOrder>
    implements _$$CreateOrderCopyWith<$Res> {
  __$$CreateOrderCopyWithImpl(
      _$CreateOrder _value, $Res Function(_$CreateOrder) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateOrder implements CreateOrder {
  const _$CreateOrder();

  @override
  String toString() {
    return 'OrderEvent.createOrder()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateOrder);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String color) getProductColor,
    required TResult Function(String name) getUserName,
    required TResult Function(String phone) getUserPhone,
    required TResult Function(String email) getUserEmail,
    required TResult Function(String delivery) getDeliveryMethod,
    required TResult Function(bool needToCall) getNeedToCall,
    required TResult Function(String comment) getComment,
    required TResult Function() createOrder,
  }) {
    return createOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String color)? getProductColor,
    TResult? Function(String name)? getUserName,
    TResult? Function(String phone)? getUserPhone,
    TResult? Function(String email)? getUserEmail,
    TResult? Function(String delivery)? getDeliveryMethod,
    TResult? Function(bool needToCall)? getNeedToCall,
    TResult? Function(String comment)? getComment,
    TResult? Function()? createOrder,
  }) {
    return createOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String color)? getProductColor,
    TResult Function(String name)? getUserName,
    TResult Function(String phone)? getUserPhone,
    TResult Function(String email)? getUserEmail,
    TResult Function(String delivery)? getDeliveryMethod,
    TResult Function(bool needToCall)? getNeedToCall,
    TResult Function(String comment)? getComment,
    TResult Function()? createOrder,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProductColor value) getProductColor,
    required TResult Function(GetUserName value) getUserName,
    required TResult Function(GetUserPhone value) getUserPhone,
    required TResult Function(GetUserEmail value) getUserEmail,
    required TResult Function(GetDeliveryMethod value) getDeliveryMethod,
    required TResult Function(GetNeedToCall value) getNeedToCall,
    required TResult Function(GetComment value) getComment,
    required TResult Function(CreateOrder value) createOrder,
  }) {
    return createOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProductColor value)? getProductColor,
    TResult? Function(GetUserName value)? getUserName,
    TResult? Function(GetUserPhone value)? getUserPhone,
    TResult? Function(GetUserEmail value)? getUserEmail,
    TResult? Function(GetDeliveryMethod value)? getDeliveryMethod,
    TResult? Function(GetNeedToCall value)? getNeedToCall,
    TResult? Function(GetComment value)? getComment,
    TResult? Function(CreateOrder value)? createOrder,
  }) {
    return createOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProductColor value)? getProductColor,
    TResult Function(GetUserName value)? getUserName,
    TResult Function(GetUserPhone value)? getUserPhone,
    TResult Function(GetUserEmail value)? getUserEmail,
    TResult Function(GetDeliveryMethod value)? getDeliveryMethod,
    TResult Function(GetNeedToCall value)? getNeedToCall,
    TResult Function(GetComment value)? getComment,
    TResult Function(CreateOrder value)? createOrder,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(this);
    }
    return orElse();
  }
}

abstract class CreateOrder implements OrderEvent {
  const factory CreateOrder() = _$CreateOrder;
}

/// @nodoc
mixin _$OrderState {
  String get color => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get delivery => throw _privateConstructorUsedError;
  bool get needToCall => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get orderCreated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderStateCopyWith<OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
  @useResult
  $Res call(
      {String color,
      String name,
      String email,
      String phone,
      String delivery,
      bool needToCall,
      String comment,
      bool isLoading,
      bool orderCreated});
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? delivery = null,
    Object? needToCall = null,
    Object? comment = null,
    Object? isLoading = null,
    Object? orderCreated = null,
  }) {
    return _then(_value.copyWith(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as String,
      needToCall: null == needToCall
          ? _value.needToCall
          : needToCall // ignore: cast_nullable_to_non_nullable
              as bool,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      orderCreated: null == orderCreated
          ? _value.orderCreated
          : orderCreated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderStateCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory _$$_OrderStateCopyWith(
          _$_OrderState value, $Res Function(_$_OrderState) then) =
      __$$_OrderStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String color,
      String name,
      String email,
      String phone,
      String delivery,
      bool needToCall,
      String comment,
      bool isLoading,
      bool orderCreated});
}

/// @nodoc
class __$$_OrderStateCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$_OrderState>
    implements _$$_OrderStateCopyWith<$Res> {
  __$$_OrderStateCopyWithImpl(
      _$_OrderState _value, $Res Function(_$_OrderState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? delivery = null,
    Object? needToCall = null,
    Object? comment = null,
    Object? isLoading = null,
    Object? orderCreated = null,
  }) {
    return _then(_$_OrderState(
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as String,
      null == needToCall
          ? _value.needToCall
          : needToCall // ignore: cast_nullable_to_non_nullable
              as bool,
      null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      null == orderCreated
          ? _value.orderCreated
          : orderCreated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_OrderState implements _OrderState {
  const _$_OrderState(
      [this.color = 'white',
      this.name = '',
      this.email = '',
      this.phone = '',
      this.delivery = '0',
      this.needToCall = false,
      this.comment = '',
      this.isLoading = false,
      this.orderCreated = false]);

  @override
  @JsonKey()
  final String color;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final String delivery;
  @override
  @JsonKey()
  final bool needToCall;
  @override
  @JsonKey()
  final String comment;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool orderCreated;

  @override
  String toString() {
    return 'OrderState(color: $color, name: $name, email: $email, phone: $phone, delivery: $delivery, needToCall: $needToCall, comment: $comment, isLoading: $isLoading, orderCreated: $orderCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderState &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.needToCall, needToCall) ||
                other.needToCall == needToCall) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.orderCreated, orderCreated) ||
                other.orderCreated == orderCreated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color, name, email, phone,
      delivery, needToCall, comment, isLoading, orderCreated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderStateCopyWith<_$_OrderState> get copyWith =>
      __$$_OrderStateCopyWithImpl<_$_OrderState>(this, _$identity);
}

abstract class _OrderState implements OrderState {
  const factory _OrderState(
      [final String color,
      final String name,
      final String email,
      final String phone,
      final String delivery,
      final bool needToCall,
      final String comment,
      final bool isLoading,
      final bool orderCreated]) = _$_OrderState;

  @override
  String get color;
  @override
  String get name;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get delivery;
  @override
  bool get needToCall;
  @override
  String get comment;
  @override
  bool get isLoading;
  @override
  bool get orderCreated;
  @override
  @JsonKey(ignore: true)
  _$$_OrderStateCopyWith<_$_OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}
