import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../imports/all_imports.dart';

class CoffeeShopScreen extends StatelessWidget {
  static const nameRoute = '/choosecoffeeshop';
  const CoffeeShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.05),
          child: const Text(
            "FIND COFFEE SHOP",
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 2.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_checkout_sharp),
            ),
          )
        ],
      ),
      backgroundColor: const Color(0x00000000),
      body: SafeArea(
        child: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                        height: screenHeight * 0.86,
                        width: double.infinity,
                        // constraints: const BoxConstraints.expand(),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            alignment: Alignment(-.3, 0),
                            image: AssetImage('assets/igbgc.jpg'),
                            fit: BoxFit.cover,
                            opacity: 0.7,
                          ),
                        ),
                        child: ListView.builder(
                          itemCount: 12,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                    ChooseIgredientsScreen.nameRoute);
                              },
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      ImageC(index),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              TextC(index),
                                              const SizedBox(height: 10),
                                              Text2C(index),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
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
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
            ),
            ListTile(
              leading: Icon(Icons.local_cafe),
              title: Text('Cafes'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
