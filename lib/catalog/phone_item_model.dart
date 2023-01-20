import '../gen/assets.gen.dart';

class PhoneItem {
  final int id;
  final String image;
  final String title;
  final bool isFavorite;

  PhoneItem({
    required this.id,
    required this.image,
    required this.title,
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
