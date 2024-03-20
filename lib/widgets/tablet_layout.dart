import 'package:flutter/material.dart';
import 'package:responsive_e_commerce_website/widgets/custom_drawer.dart';
import 'package:responsive_e_commerce_website/widgets/headphone_tablet_body.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: HeadPhoneTabletBody(),
            )),
        SizedBox(
          width: 24,
        ),
      ],
    );
  }
}