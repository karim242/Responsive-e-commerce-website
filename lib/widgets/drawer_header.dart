import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_e_commerce_website/utils/app_styles.dart';
import 'package:responsive_e_commerce_website/utils/assets.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: FittedBox(child: SvgPicture.asset(Assets.imagesSoundix)),
        title: FittedBox(
            fit: BoxFit.scaleDown,
            child:
                Text("Soundix", style: AppStyles.styleBoldPublic25(context))));
  }
}
