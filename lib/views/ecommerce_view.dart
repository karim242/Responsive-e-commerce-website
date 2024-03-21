import 'package:flutter/material.dart';
import 'package:responsive_e_commerce_website/widgets/adaptive_layout.dart';
import 'package:responsive_e_commerce_website/widgets/desketop_layout.dart';
import 'package:responsive_e_commerce_website/widgets/mobile_layot.dart';
import 'package:responsive_e_commerce_website/widgets/tablet_layout.dart';

import '../widgets/custom_drawer.dart';

class EcommerceView extends StatefulWidget {
  const EcommerceView({super.key});

  @override
  State<EcommerceView> createState() => _EcommerceViewState();
}

class _EcommerceViewState extends State<EcommerceView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              backgroundColor: const Color(0xff016170),
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
            )
          : null,
      drawer:
          MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
      backgroundColor: const Color(0xffF5F5F5),
      body: AdaptiveLayout(
        mobileLayout: (BuildContext context) => const Padding(
          padding: EdgeInsets.all(12),
          child: MobileLayout(),
        ),
        tabletLayout: (BuildContext context) => const TabletLayout(),
        desketopLayout: (BuildContext context) => const DesketopLayout(),
      ),
    );
  }
}
