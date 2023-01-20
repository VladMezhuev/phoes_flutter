import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phone_app/catalog/phone_item_model.dart';
import 'catalog/catalog_screen.dart';
import 'detail/phone_detail_screen.dart';



void main() => runApp(
  MaterialApp.router(
    debugShowCheckedModeBanner: false,
    routerConfig: _router,
  )
);

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
      ],
    ),
  ],
);
