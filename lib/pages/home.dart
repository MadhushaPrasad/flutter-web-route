import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
                GoRouter.of(context).push(Uri(path: '/about').toString());
              },
              child: const Text('About Page')),
        ],
      ),
    );
  }
}
