import 'package:flutter/material.dart';
import 'package:phone_app/catalog/phone_item_model.dart';
import 'package:phone_app/catalog/phone_item_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../locale_provider.dart';

class CatalogScreen extends StatelessWidget {
  CatalogScreen({Key? key}) : super(key: key);

  final phonesList = PhoneItem.getList();

  var localeRU = const Locale("ru");
  var localeEN = const Locale("en");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        title: Row(
          children: [
            Text(
              AppLocalizations.of(context)!.catalog,
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                context.read<LocaleProvider>().setLocale(localeRU);
              },
              child: Row(
                children: const [
                  Icon(Icons.language, color: Colors.white),
                  Text('RU', style: TextStyle(color: Colors.white))
                ],
              )
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
                onTap: () {
                  context.read<LocaleProvider>().setLocale(localeEN);
                },
                child: Row(
                  children: const [
                    Icon(Icons.language, color: Colors.white),
                    Text('EN', style: TextStyle(color: Colors.white))
                  ],
                )
            ),
          ],
        )
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
