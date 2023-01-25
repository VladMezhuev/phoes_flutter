import 'package:flutter/material.dart';
import 'package:phone_app/catalog/catalog_bloc/catalog_bloc.dart';
import 'package:phone_app/catalog/phone_item_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../locale_provider.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  final localeRU = const Locale("ru");
  final localeEN = const Locale("en");

  @override
  Widget build(BuildContext context) {
    final catalogBloc = CatalogBloc()
      ..add(CatalogGetPhonesEvent());
    return BlocProvider<CatalogBloc>(
      create: (context) => catalogBloc,
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.orange,
                elevation: 0,
                title: Row(
                  children: [
                    Text(
                      AppLocalizations
                          .of(context)
                          .catalog,
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
            body: BlocProvider(
              create: (context) => catalogBloc,
              child: BlocBuilder<CatalogBloc, CatalogState>(
                bloc: catalogBloc,
                builder: (context, state) {
                  if (state is CatalogPhonesState) {
                    return Container(
                      padding: const EdgeInsets.all(10),
                      child: GridView.builder(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            mainAxisExtent: 311,
                          ),
                          itemCount: state.phones.length,
                          itemBuilder: (context, index) {
                            return PhoneItemCard(
                                phone: state.phones[index]
                              // phone: phonesList[index],
                            );
                          }
                      )
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
          );
        }
      ),
    );
  }
}
