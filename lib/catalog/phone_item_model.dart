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
      PhoneItem(id: 1, image: 'assets/phone1.jpg', title: 'Phone 1'),
      PhoneItem(id: 2, image: 'assets/phone2.jpg', title: 'Phone 2'),
      PhoneItem(id: 3, image: 'assets/phone3.jpg', title: 'Phone 3'),
      PhoneItem(id: 4, image: 'assets/phone4.jpg', title: 'Phone 4'),
    ];
  }
}
