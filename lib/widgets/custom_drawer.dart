import 'package:flutter/material.dart';

import '../imports/all_imports.dart';

class CustomDrawer extends StatelessWidget {
  final int index;
  const CustomDrawer(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment(0, 0),
                image: AssetImage('assets/bgc.jpg'),
                fit: BoxFit.cover,
                opacity: 0.7,
              ),
              border: Border(top: BorderSide.none),
            ),
            child: Text(''),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.popUntil(context, ModalRoute.withName('/'));
            },
          ),
          ListTile(
            leading: const Icon(Icons.local_cafe),
            title: const Text('Find Coffee Shop'),
            onTap: () {
              if (index == 1) {
                Navigator.of(context).pushNamed(CoffeeShopScreen.nameRoute);
              } else {
                Navigator.popUntil(
                    context, ModalRoute.withName(CoffeeShopScreen.nameRoute));
              }
            },
          ),
        ],
      ),
    );
  }
}
