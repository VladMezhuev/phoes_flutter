part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState([
    @Default('') String color,
    @Default('') String name,
    @Default('') String email,
    @Default('') String phone,
    @Default('') String delivery,
    @Default(false) bool needToCall,
    @Default('') String comment,
    @Default(false) bool isLoading,
    @Default(false) bool orderCreated,
  ]) = _OrderState;
}
