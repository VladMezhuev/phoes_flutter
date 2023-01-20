import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phone_app/catalog/phone_item_model.dart';

class PhoneItemCard extends StatelessWidget {
  const PhoneItemCard({
    Key? key,
    required this.phone,
  }) : super(key: key);

  final PhoneItem phone;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            InkWell(
              onTap: () => context.goNamed(
                'details',
                extra: phone,
              ),
              child: _PhoneCardImageWidget(image: phone.image),
            ),
            _PhoneCartTitleWidget(phone: phone),
            _PhoneCardActionsWidget(isFavorite: phone.isFavorite)
            // _PhoneCardActionsWidget(isFavorite: phone.isFavorite)
          ],
        ),
      ),
    );
  }
}

class _PhoneCardImageWidget extends StatelessWidget {
  const _PhoneCardImageWidget({Key? key, required this.image})
      : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: Image.asset(
        image,
        height: 140,
      ),
    );
  }
}

class _PhoneCartTitleWidget extends StatelessWidget {
  const _PhoneCartTitleWidget({
    Key? key,
    required this.phone,
  }) : super(key: key);

  final PhoneItem phone;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.orange,
          border: Border(
            bottom: BorderSide(width: 1, color: Colors.orangeAccent),
          )),
      child: TextButton(
          onPressed: () => context.goNamed(
                'details',
                extra: phone,
              ),
          child: Text(
            phone.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          )),
    );
  }
}

class _PhoneCardActionsWidget extends StatefulWidget {
  _PhoneCardActionsWidget({Key? key, required this.isFavorite})
      : super(key: key);

  bool isFavorite;

  @override
  State<_PhoneCardActionsWidget> createState() => _PhoneCardActionsWidgetState();
}

class _PhoneCardActionsWidgetState extends State<_PhoneCardActionsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                widget.isFavorite = !widget.isFavorite;
              });
            },
            icon: setFavoriteIcon(widget.isFavorite),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_shopping_cart,
              color: Colors.white,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}

Widget setFavoriteIcon(bool isFavorite) {
  Widget favIcon = const Icon(
    Icons.favorite,
    color: Colors.white,
    size: 28,
  );
  Widget notFavIcon = const Icon(
    Icons.favorite_border,
    color: Colors.white,
    size: 28,
  );

  return isFavorite ? favIcon : notFavIcon;
}
