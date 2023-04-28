import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import '../imports/all_imports.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.17),
          child: const Text(
            "CAFFE FINDER",
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
                          image: AssetImage('assets/bgc2.jpg'),
                          fit: BoxFit.cover,
                          opacity: 0.7,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 25.0),
                      child: Text(
                        "Find the best \ncoffee for you",
                        style: GoogleFonts.bebasNeue(
                          fontSize: 56,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25.0,
                        right: 25.0,
                        top: 180,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'Find your caffe',
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.shade600,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: screenHeight * 0.3,
                      left: 25,
                      right: 25,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.brown.shade600,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(
                              context, CoffeeShopScreen.nameRoute);
                        },
                        child: const Text("Choose coffee shops"),
                      ),
                    ),
                    Positioned(
                      top: 350,
                      bottom: 20,
                      left: 0,
                      right: 0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CoffeeTile('assets/late.jpg', "Latte",
                              "With Almond Milk", '4.20'),
                          CoffeeTile('assets/Cappuccino.jpg', "Cappuccino",
                              "With Almond Milk", '8.00'),
                          CoffeeTile('assets/Mocha.jpg', "Mocha",
                              "With Coconat Milk", '12.50'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: CustomDrawer(1),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
