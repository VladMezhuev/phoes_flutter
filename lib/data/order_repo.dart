import 'package:flutter/foundation.dart';

class OrderRepository {

  Future<void> create({
    required String color,
    required String name,
    required String phone,
    required String email,
    required String delivery,
    bool needToCall = false,
    String comment = '',
  }) async {
    if (kDebugMode) {
      await Future.delayed(const Duration(seconds: 1));
      print('$name, $phone, $email');
    }
  }
}
