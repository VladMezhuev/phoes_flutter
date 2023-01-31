part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.getProductColor(String color) = GetProductColor;
  const factory OrderEvent.getUserName(String name) = GetUserName;
  const factory OrderEvent.getUserPhone(String phone) = GetUserPhone;
  const factory OrderEvent.getUserEmail(String email) = GetUserEmail;
  const factory OrderEvent.getDeliveryMethod(String delivery) = GetDeliveryMethod;
  const factory OrderEvent.getNeedToCall(bool needToCall) = GetNeedToCall;
  const factory OrderEvent.getComment(String comment) = GetComment;

  const factory OrderEvent.createOrder() = CreateOrder;
}
