import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:phone_app/screens/catalog/phone_item_model.dart';

import 'catalog_bloc/catalog_bloc.dart';

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
            _PhoneCardImageWidget(phone: phone),
            _PhoneCartTitleWidget(phone: phone),
            Container(
              decoration: const BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      context.read<CatalogBloc>().add(TogglePhoneFavorite(phone.id));
                    },
                    icon: setFavoriteIcon(phone.isFavorite),
                  ),
                  IconButton(
                    onPressed: () => context.goNamed(
                      'order',
                      extra: phone,
                    ),
                    icon: const Icon(
                      Icons.add_shopping_cart,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PhoneCardImageWidget extends StatelessWidget {
  const _PhoneCardImageWidget({Key? key, required this.phone})
      : super(key: key);

  final PhoneItem phone;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: InkWell(
        onTap: () => context.goNamed(
          'details',
          extra: phone,
        ),
        child: Image.asset(
          phone.image,
          height: 140,
        ),
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
          // onPressed: () => context.goNamed(
          //       'details',
          //       extra: phone,
          //     ),
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
