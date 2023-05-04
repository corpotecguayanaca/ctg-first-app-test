import 'package:flutter/material.dart';

import 'package:first_app_test/src/pages/contador_page.dart';
// import 'package:first_app_test/src/pages/home_page.dart';

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: ContadorPage(),
      ),
    );
  }
}