part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState([
    @Default('white') String color,
    @Default('') String name,
    @Default('') String email,
    @Default('') String phone,
    @Default('0') String delivery,
    @Default(false) bool needToCall,
    @Default('') String comment,
    @Default(false) bool isLoading,
    @Default(false) bool orderCreated,
  ]) = _OrderState;
}
