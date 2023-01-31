// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
//
// class OrderRepository {
//   final _fireCloud = FirebaseFirestore.instance.collection('orders');
//
//   Future<void> create({
//     required int color,
//     required String name,
//     required String phone,
//     required String mail,
//     required int delivery,
//     String deliveryAddress = '',
//     bool isCall = false,
//     String comment = '',
//   }) async {
//     try {
//       await _fireCloud.add({
//         'color': color,
//         'name': name,
//         'phone': phone,
//         'mail': mail,
//         'delivery': delivery,
//         'deliveryAddress': deliveryAddress,
//         'isCall': isCall,
//         'comment': comment,
//       });
//     } on FirebaseException catch(e) {
//       if (kDebugMode) {
//         print('${e.code}: ${e.message}');
//       }
//     } catch(e) {
//       throw Exception(e.toString());
//     }
//   }
// }

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
