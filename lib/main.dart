import 'package:flutter/material.dart';
import 'package:flutterwebroute/routes/app_route_config.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationProvider:
          MyAppRouter.returnRouter(false).routeInformationProvider,
      routeInformationParser:
          MyAppRouter.returnRouter(false).routeInformationParser,
      routerDelegate: MyAppRouter.returnRouter(false).routerDelegate,
    );
  }
}
