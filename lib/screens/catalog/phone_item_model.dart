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

  PhoneItem copyWith({
    int? id,
    String? title,
    String? image,
    bool? isFavorite
  }) {
    return PhoneItem(
      id: id ?? this.id,
      title: title ?? this.title,
      image: image ?? this.image,
      isFavorite: isFavorite ?? this.isFavorite
    );
  }
}
