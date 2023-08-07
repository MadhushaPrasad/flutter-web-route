import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routes/app_route_constants.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            child: const Center(
              child: Text('Home'),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                print(MyAppRouteConstants.aboutRouteName);
                GoRouter.of(context)
                    .goNamed(MyAppRouteConstants.aboutRouteName);
              },
              child: const Text('About Page')),
          ElevatedButton(
              onPressed: () {
                GoRouter.of(context).pushNamed(
                    MyAppRouteConstants.profileRouteName,
                    pathParameters: {
                      'username': 'Madhusha Prasad',
                      'userid': '1234'
                    });
              },
              child: const Text('Profile Page')),
          ElevatedButton(
              onPressed: () {
                GoRouter.of(context)
                    .goNamed(MyAppRouteConstants.contactUsRouteName);
              },
              child: const Text('ContactUs Page')),
        ],
      ),
    );
  }
}
