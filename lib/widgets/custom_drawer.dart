import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_e_commerce_website/utils/assets.dart';
import 'package:responsive_e_commerce_website/widgets/custom_drawer_items_listview.dart';
import 'package:responsive_e_commerce_website/widgets/drawer_header.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFFFFFF),
      child: Align(
        alignment: Alignment.centerLeft,
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 19,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomDrawerHeader(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
              ),
            ),
            const CustomDrawerListView(),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 36,
              ),
            ),
            SliverToBoxAdapter(
                child: ClipRRect(
              child: SvgPicture.asset(Assets.imagesNeedHelp),
            ))
          ],
        ),
      ),
    );
  }
}