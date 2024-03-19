import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_e_commerce_website/widgets/custom_drawer.dart';
import 'package:responsive_e_commerce_website/widgets/headphone_body.dart';

class DesketopLayout extends StatelessWidget {
  const DesketopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 24,
        ),
        Expanded(flex: 4, child: HeadPhoneBody())
      ],
    );
  }
}