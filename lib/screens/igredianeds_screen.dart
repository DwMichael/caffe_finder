import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../imports/all_imports.dart';

class ChooseIgredientsScreen extends StatelessWidget {
  static const nameRoute = '/chooseigredients';
  const ChooseIgredientsScreen({super.key});

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
            "Igredients",
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
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/igbgc.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          height: screenHeight,
          width: screenWidth,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              GridView.count(
                crossAxisCount: 2,
                children: [
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.network(
                          'https://plus.unsplash.com/premium_photo-1671399374947-feee46d4388a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                          width: double.infinity,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("coffee beans"),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.network(
                          'https://plus.unsplash.com/premium_photo-1664647903564-86768c0c1849?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                          width: double.infinity,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Normal Milk"),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.network(
                          'https://images.unsplash.com/photo-1439127989242-c3749a012eac?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                          width: double.infinity,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Cherry"),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.network(
                          'https://images.unsplash.com/photo-1552526881-5517a57b6d4a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
                          width: double.infinity,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Grape"),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.network(
                          'https://images.unsplash.com/photo-1582979512210-99b6a53386f9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                          width: double.infinity,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Lemon"),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.network(
                          'https://images.unsplash.com/photo-1549007953-2f2dc0b24019?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
                          width: double.infinity,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Strawberry"),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 620,
                left: 80,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: 250,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: const <Widget>[
                              Text(
                                'Chosen Ingredients:',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('2x Strawberry'),
                              Text('Strong Coffee Beans'),
                              Text('Normal Milk'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(OrderScreen.nameRoute);
                      },
                      child: const Text('Confirm Order'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.brown.shade600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      drawer: const CustomDrawer(2),
    );
  }
}
