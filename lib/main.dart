import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:phone_app/di.dart';
import 'package:phone_app/l10n/locale_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:phone_app/screens/catalog/catalog_screen.dart';
import 'package:phone_app/screens/catalog/phone_item_model.dart';
import 'package:phone_app/screens/detail/phone_detail_screen.dart';
import 'package:phone_app/screens/order/order_screen.dart';
import 'package:provider/provider.dart';
import 'l10n/support_locale.dart';

void main() {
  // setup();
  configureDependencies();
  runApp(
    ChangeNotifierProvider(
      create: (context) => LocaleProvider(),
      builder: (context, child) {
        return Consumer<LocaleProvider>(
          builder: (context, provider, child) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                appBarTheme: const AppBarTheme(
                  color: Colors.orange,
                  elevation: 0,
                ),
              ),
              routerConfig: _router,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              locale: provider.locale,
              supportedLocales: L10n.support,
            );
          },
        );
      },
    ),
  );
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return CatalogScreen();
      },
      routes: [
        GoRoute(
          name: 'details',
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return PhoneDetailScreen(
              model: state.extra as PhoneItem,
            );
          },
        ),
        GoRoute(
          name: 'order',
          path: 'order',
          builder: (BuildContext context, GoRouterState state) {
            return OrderScreen(
              model: state.extra as PhoneItem,
            );
          },
        ),
      ],
    ),
  ],
);
