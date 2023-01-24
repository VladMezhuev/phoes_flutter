import 'package:freezed_annotation/freezed_annotation.dart';
import '../gen/assets.gen.dart';

// part 'phone_item_model.freezed.dart';

// @unfreezed
// class PhoneItem with _$PhoneItem {
//   factory PhoneItem({
//     required final int id,
//     required final String title,
//     required final String image,
//     @Default(false) bool isFavorite,
//   }) = _PhoneItem;
//
//   static List<PhoneItem> getList() {
//     return [
//       PhoneItem(id: 1, image: Assets.images.phone1.path, title: 'Phone 1'),
//       PhoneItem(id: 2, image: Assets.images.phone2.path, title: 'Phone 2'),
//       PhoneItem(id: 3, image: Assets.images.phone3.path, title: 'Phone 3'),
//       PhoneItem(id: 4, image: Assets.images.phone4.path, title: 'Phone 4'),
//     ];
//   }
// }

class PhoneItem {
  final int id;
  final String title;
  final String image;
  final bool isFavorite;

  PhoneItem({
    required this.id,
    required this.title,
    required this.image,
    this.isFavorite = false,
  });

  static List<PhoneItem> getList() {
    return [
      PhoneItem(id: 1, image: Assets.images.phone1.path, title: 'Phone 1'),
      PhoneItem(id: 2, image: Assets.images.phone2.path, title: 'Phone 2'),
      PhoneItem(id: 3, image: Assets.images.phone3.path, title: 'Phone 3'),
      PhoneItem(id: 4, image: Assets.images.phone4.path, title: 'Phone 4'),
    ];
  }
}
