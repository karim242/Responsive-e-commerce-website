import 'package:flutter/material.dart';
import 'package:responsive_e_commerce_website/views/ecommerce_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: EcommerceView(),
    );
  }
}
      