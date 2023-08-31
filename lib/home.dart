import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Uthenge - Home'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.trip_origin),
            title: const Text('Deliveries'),
            onTap: () {
              Navigator.pushNamed(context, '/delivery');
            },
          ),
        ],
      ),
    );
  }
}
