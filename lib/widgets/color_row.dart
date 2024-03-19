import 'package:flutter/material.dart';
import 'package:responsive_e_commerce_website/utils/app_styles.dart';
import 'package:responsive_e_commerce_website/widgets/color_item.dart';
import 'package:responsive_e_commerce_website/widgets/incresse_and_decresse_num.dart';

class ColorRow extends StatelessWidget {
  const ColorRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Color',
          style:
              AppStyles.styleMediumPo16(context).copyWith(color: Colors.black),
        ),
        const SizedBox(
          width: 20,
        ),
        const ColorListItem(),
        const SizedBox(
          width: 80,
        ),
        const AddNumder(),
      ],
    );
  }
}
