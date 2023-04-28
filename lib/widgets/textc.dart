import 'package:flutter/material.dart';

class TextC extends StatelessWidget {
  final int index;
  const TextC(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return index == 1
        ? const Text(
            'The Bean House',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          )
        : index == 2
            ? const Text(
                'Latte Land',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              )
            : index == 3
                ? const Text(
                    'Brewtopia',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                : index == 4
                    ? const Text(
                        'Café Cozy',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      )
                    : index == 5
                        ? const Text(
                            'Mug Life',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          )
                        : index == 6
                            ? const Text(
                                'Java Joint',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              )
                            : index == 7
                                ? const Text(
                                    'Steaming Mugs',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  )
                                : index == 8
                                    ? const Text(
                                        'The Bean House',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      )
                                    : index == 9
                                        ? const Text(
                                            'The Daily Grind',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          )
                                        : index == 10
                                            ? const Text(
                                                'The Perk Up',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                ),
                                              )
                                            : index == 11
                                                ? const Text(
                                                    'The Roasters Retreat',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20,
                                                    ),
                                                  )
                                                : const Text(
                                                    'The Coffee Break',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20,
                                                    ),
                                                  );
  }
}
