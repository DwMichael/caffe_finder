import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'imports/all_imports.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cafe Finder Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        CoffeeShopScreen.nameRoute: (context) => CoffeeShopScreen(),
        ChooseIgredientsScreen.nameRoute: (context) => ChooseIgredientsScreen(),
        OrderScreen.nameRoute: (context) => const OrderScreen(),
        FinalOrderScreen.nameRoute: (context) => const FinalOrderScreen(),
      },
    );
  }
}
