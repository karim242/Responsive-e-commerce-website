import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_e_commerce_website/models/drawer_items_model.dart';
import 'package:responsive_e_commerce_website/utils/app_styles.dart';

class CustomDrawerListTile extends StatelessWidget {
  const CustomDrawerListTile(
      {super.key, required this.item, this.isActive = false});
  final DrawerItemsModel item;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.image),
      title: Text(item.title, style: AppStyles.styleMediumPo18(context)),
      trailing: AnimatedCrossFade(
        firstChild: const IsActive(),
        secondChild: const SizedBox(),
        crossFadeState:
            isActive ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: const Duration(milliseconds: 500),
      ),
    );
  }
}

class IsActive extends StatelessWidget {
  const IsActive({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff009393),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          bottomLeft: Radius.circular(12),
        ),
      ),
      width: 6,
    );
  }
}
