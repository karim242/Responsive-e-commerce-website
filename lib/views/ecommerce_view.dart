import 'package:flutter/material.dart';
import 'package:responsive_e_commerce_website/widgets/adaptive_layout.dart';
import 'package:responsive_e_commerce_website/widgets/desketop_layout.dart';

class EcommerceView extends StatelessWidget {
  const EcommerceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: AdaptiveLayout(
        mobileLayout: (BuildContext context) =>const SizedBox(),
        tabletLayout: (BuildContext context) =>const SizedBox(),
        desketopLayout: (BuildContext context) =>const DesketopLayout(),
      ),
    );
  }
}
