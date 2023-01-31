class OrderModel {
  final int color;
  final String name;
  final String phone;
  final String mail;
  final int delivery;
  final String deliveryAddress;
  final bool isCall;
  final String comment;

  OrderModel({
    this.color = 0,
    required this.name,
    required this.phone,
    required this.mail,
    required this.delivery,
    this.deliveryAddress = '',
    this.isCall = false,
    this.comment = '',
  });
}
