import 'package:flutter/material.dart';

class Text2C extends StatelessWidget {
  final int index;
  const Text2C(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return index == 1
        ? const Text(
            '12 Elm Street, 12345, New York City',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          )
        : index == 2
            ? const Text(
                '5 Oak Lane, 54321, Los Angeles',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              )
            : index == 3
                ? const Text(
                    '7 Pine Road, 98761, Chicago',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                : index == 4
                    ? const Text(
                        '9 Cedar Boulevard, 12365, Houston',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      )
                    : index == 5
                        ? const Text(
                            '13 Willow Way, 98765, Phoenix',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          )
                        : index == 6
                            ? const Text(
                                '11 Birch Avenue, 45678, Philadelphia',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              )
                            : index == 7
                                ? const Text(
                                    '15 Ash Drive, 24689, San Antonio',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  )
                                : index == 8
                                    ? const Text(
                                        '17 Maple Place, 13567, San Diego',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      )
                                    : index == 9
                                        ? const Text(
                                            '19 Chestnut Street, 87634, Dallas',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          )
                                        : index == 10
                                            ? const Text(
                                                '21 Oak Drive, 54637, San Jose',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                ),
                                              )
                                            : index == 11
                                                ? const Text(
                                                    '23 Pine Terrace, 31415, Austin',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20,
                                                    ),
                                                  )
                                                : const Text(
                                                    '25 Cedar Lane, 67890, Jacksonville',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20,
                                                    ),
                                                  );
  }
}
