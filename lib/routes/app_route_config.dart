import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/about.dart';
import '../pages/contact_us.dart';
import '../pages/error_page.dart';
import '../pages/home.dart';
import '../pages/profile.dart';
import 'app_route_constants.dart';

class MyAppRouter {
  static GoRouter returnRouter(bool isAuth) {
    GoRouter router = GoRouter(
      routes: [
        GoRoute(
          name: MyAppRouteConstants.homeRouteName,
          path: '/',
          pageBuilder: (context, state) {
            return const MaterialPage(child: Home());
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.profileRouteName,
          path: '/profile/:username/:userid',
          pageBuilder: (context, state) {
            return MaterialPage(
                child: Profile(
              userid: state.pathParameters['userid']!,
              username: state.pathParameters['username']!,
            ));
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.aboutRouteName,
          path: '/about',
          pageBuilder: (context, state) {
            return const MaterialPage(child: About());
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.contactUsRouteName,
          path: '/contact_us',
          pageBuilder: (context, state) {
            return const MaterialPage(child: ContactUS());
          },
        )
      ],
      errorPageBuilder: (context, state) {
        return const MaterialPage(child: ErrorPage());
      },
      redirect: (context, state) {
        if (!isAuth &&
            state.matchedLocation
                .startsWith('/${MyAppRouteConstants.profileRouteName}')) {
          return context.namedLocation(MyAppRouteConstants.contactUsRouteName);
        } else {
          return null;
        }
      },
    );
    return router;
  }
}
