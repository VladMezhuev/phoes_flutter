import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_app/data/phones_repository.dart';
import 'package:phone_app/screens/catalog/phone_item_widget.dart';

import '../../l10n/locale_provider.dart';
import 'catalog_bloc/catalog_bloc.dart';

class CatalogScreen extends StatelessWidget {
  CatalogScreen({Key? key}) : super(key: key);

  final localeRU = const Locale("ru");
  final localeEN = const Locale("en");

  final phonesRepository = GetIt.instance<PhonesRepository>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CatalogBloc>(
      create: (context) => CatalogBloc(phonesRepository: phonesRepository)
        ..add(const GetPhonesList()),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
              title: Row(
            children: [
              Text(
                AppLocalizations.of(context).catalog,
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
                  )),
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
                  )),
            ],
          )),
          body: BlocBuilder<CatalogBloc, CatalogState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Container(
                  padding: const EdgeInsets.all(10),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 311,
                    ),
                    itemCount: state.phones.length,
                    itemBuilder: (context, index) {
                      return PhoneItemCard(
                        phone: state.phones[index],
                      );
                    },
                  ),
                );
              }
            },
          ),
        );
      }),
    );
  }
}
