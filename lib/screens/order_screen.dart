import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import '../imports/all_imports.dart';

class OrderScreen extends StatefulWidget {
  static const nameRoute = '/order';
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
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
            "ORDER CAFFE",
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
              image: AssetImage(
                'assets/igbgc.jpg',
              ),
              fit: BoxFit.cover,
              opacity: 0.5,
            ),
          ),
          height: screenHeight,
          width: screenWidth,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 30,
                height: 380,
                left: 50,
                right: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Card(
                    color: Colors.black,
                    child: SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: Image.network(
                        'https://images.unsplash.com/photo-1517256064527-09c73fc73e38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.5,
                left: 80,
                right: 80,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.brown.shade600,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, FinalOrderScreen.nameRoute);
                  },
                  child: const Text("Submit your order"),
                ),
              ),
              Positioned(
                  top: 480,
                  bottom: 30,
                  left: 10,
                  right: 10,
                  child: Card(
                    color: Colors.grey[700],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Order Summary',
                            style: GoogleFonts.montserrat(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'You have ordered a cappuccino with a shot of hazelnut and a caramel drizzle. Total cost: \$4.50',
                            style: GoogleFonts.montserrat(
                                fontSize: 18, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
      drawer: CustomDrawer(1),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
