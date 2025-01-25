import 'package:flutter/material.dart';
import 'pages/intro_page.dart';
import 'package:provider/provider.dart';
import 'models/cart.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Cart>(
        create: (context)=> Cart(),
    child : const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    ),
    );






  }
}
