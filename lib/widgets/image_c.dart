import 'package:flutter/material.dart';

class ImageC extends StatelessWidget {
  final int index;
  const ImageC(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return index == 1
        ? Image.network(
            'https://images.unsplash.com/photo-1566897819059-db42e135fa69?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80',
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          )
        : index == 2
            ? Image.network(
                'https://images.unsplash.com/photo-1619536095378-c96a5639ccc5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              )
            : index == 3
                ? Image.network(
                    'https://images.unsplash.com/photo-1598040355808-00c89dae08be?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  )
                : index == 4
                    ? Image.network(
                        'https://images.unsplash.com/photo-1442975631115-c4f7b05b8a2c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1333&q=80',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      )
                    : index == 5
                        ? Image.network(
                            'https://images.unsplash.com/photo-1518739745383-0ef26e9dd7fd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1142&q=80',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          )
                        : index == 6
                            ? Image.network(
                                'https://images.unsplash.com/photo-1619474387533-301ed3b5a734?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=930&q=80',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              )
                            : index == 7
                                ? Image.network(
                                    'https://images.unsplash.com/photo-1576002196738-7735f26fec6c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  )
                                : index == 8
                                    ? Image.network(
                                        'https://images.unsplash.com/photo-1505066827145-34bcde228211?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=670&q=80',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      )
                                    : index == 9
                                        ? Image.network(
                                            'https://images.unsplash.com/photo-1518211210891-784cdb45f706?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1271&q=80',
                                            width: 100,
                                            height: 100,
                                            fit: BoxFit.cover,
                                          )
                                        : index == 10
                                            ? Image.network(
                                                'https://images.unsplash.com/photo-1511018556340-d16986a1c194?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                                                width: 100,
                                                height: 100,
                                                fit: BoxFit.cover,
                                              )
                                            : index == 11
                                                ? Image.network(
                                                    'https://images.unsplash.com/photo-1664088760009-faf16e24edf9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
                                                    width: 100,
                                                    height: 100,
                                                    fit: BoxFit.cover,
                                                  )
                                                : Image.network(
                                                    'https://images.unsplash.com/photo-1664088760009-faf16e24edf9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
                                                    width: 100,
                                                    height: 100,
                                                    fit: BoxFit.cover,
                                                  );
  }
}
