import 'package:flutter/material.dart';
import 'package:responsive_e_commerce_website/utils/app_styles.dart';

class AllHeader extends StatelessWidget {
  const AllHeader({super.key, required this.title, required this.subtitle});
final String title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
         title,
          style: AppStyles.styleSemBoldRobp24(context),
        ),
        const Spacer(),
        // const SizedBox(
        //   width: 18,
        // ),
        Text(
          subtitle,
          style: AppStyles.styleMediumPo14(context),
        ),
        const SizedBox(
          width: 8,
        ),
        const Icon(
          Icons.arrow_forward_ios_outlined,
          color: Color(0xff5C5C5C),
          size: 14,
        ),
        const SizedBox(
          width: 12,
        ),
      ],
    );
  }
}
