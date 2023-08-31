import 'package:flutter/material.dart';
import 'home.dart';
import 'delivery.dart';

void main() {
  runApp(const UthengeApp());
}

class UthengeApp extends StatelessWidget {
  const UthengeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uthenge',
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        DeliveryScreen.routeName: (context) => const DeliveryScreen()
      },
      initialRoute: '/',
    );
  }
}
