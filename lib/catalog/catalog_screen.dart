import 'package:flutter/material.dart';
import 'package:phone_app/catalog/phone_item_model.dart';
import 'package:phone_app/catalog/phone_item_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CatalogScreen extends StatelessWidget {
  CatalogScreen({Key? key}) : super(key: key);

  final phonesList = PhoneItem.getList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        title: Text(
          AppLocalizations.of(context)!.catalog,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              mainAxisExtent: 311,
            ),
            itemCount: phonesList.length,
            itemBuilder: (context, index) {
              return PhoneItemCard(
                phone: phonesList[index],
              );
            }
        ),
      ),
    );
  }
}
