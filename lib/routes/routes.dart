// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:geap_fit/pages/pages.dart';
import 'package:geap_fit/pages/recharge/recharge.dart';
import 'package:geap_fit/pages/store/bloc/store_bloc.dart';
import 'package:geap_fit/pages/store/models/store_model.dart';
import 'package:geap_fit/utils/global.dart';
import 'package:geap_fit/utils/staticNamesRoutes.dart';
import '../di/injection.dart';
import '../pages/bottom_nav/bottom_nav.dart';
import '../pages/bottom_nav/bottom_nav_bloc.dart';
import '../pages/details/bloc/details_bloc.dart';
import '../pages/client/bloc/client_eq_bloc.dart';
import '../services/cacheService.dart';

final _rootNavigatorKey = Globalkeys.rootNavigatorKey;
final _shellNavigatorKey = Globalkeys.shellNavigatorKey;

final _logger = Logger();

class Routes extends StatefulWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  State<Routes> createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: const Locale('es'),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}

GoRoute rootRoute() {
  return GoRoute(
      path: StaticNames.rootName.path,
      redirect: (context, state) async {
        bool isLoggedIn = await getIt<Cache>().areCredentialsStored();
        _logger.i("tienes credenciales? $isLoggedIn");
        return isLoggedIn
            ? StaticNames.salesName.path
            : StaticNames.loginName.path;
      });
}

final GoRouter router = GoRouter(
  initialLocation: StaticNames.rootName.path,
  navigatorKey: _rootNavigatorKey,
  routes: [
    rootRoute(),
    GoRoute(
        path: StaticNames.loginName.path,
        name: StaticNames.loginName.name,
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) {
          _logger.i(state.location);
          return const LoginScreen();
        }),
    GoRoute(
      path: StaticNames.emailFormName.path,
      name: StaticNames.emailFormName.name,
      parentNavigatorKey: _rootNavigatorKey,
      builder: (context, state) {
        _logger.i(state.location);
        return EmailForm(
          title: state.extra.toString(),
        );
      }),
    GoRoute(
      path: StaticNames.registerName.path,
      name: StaticNames.registerName.name,
      builder: (context, state) {
        _logger.i(state.location);
        return const RegisterScreen();
      },
    ),
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return BottomNavScreen(bloc: getIt<BottomNavBloc>(), child: child);
      },
      routes: [
        GoRoute(
          parentNavigatorKey: _shellNavigatorKey,
          path: StaticNames.logoutName.path,
          name: StaticNames.logoutName.name,
          builder: (context, state) {
            _logger.i(state.location);
            return const LogoutScreen();
          },
        ),
        GoRoute(
            name: StaticNames.salesName.name,
            parentNavigatorKey: _shellNavigatorKey,
            path: StaticNames.salesName.path,
            builder: (context, state) {
              _logger.i(state.location);
              return SalesScreen(bloc: SalesEqBloc());
            },
        ),
        GoRoute(
            name: StaticNames.store.name,
            parentNavigatorKey: _shellNavigatorKey,
            path: StaticNames.store.path,
            builder: (context, state) {
              _logger.i(state.location);
              // ApiServices ;
              return StoreScreen(bloc: StoreBloc());
            },
            routes: [
              GoRoute(
                name: StaticNames.details.name,
                parentNavigatorKey: _shellNavigatorKey,
                path: StaticNames.details.path,
                builder: (context, state) {
                  _logger.i(state.location);
                  var product = state.extra as Results;
                  return DetailsScreen(bloc: DetailsBloc(product: product));
                },
              ),
              GoRoute(
                name: StaticNames.recharge.name,
                parentNavigatorKey: _shellNavigatorKey,
                path: StaticNames.recharge.path,
                builder: (context, state) {
                  _logger.i(state.location);
                  var list = state.extra as List<String>;
                  _logger.i(list);

                  return RechageScreen(bloc: RechargeBloc(listTypes: list));
                },
              ),
            ])
      ],
    ),
  ],
);
