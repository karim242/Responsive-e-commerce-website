import 'package:flutter/material.dart';
import 'package:responsive_e_commerce_website/utils/app_styles.dart';
import 'package:responsive_e_commerce_website/widgets/beats_studio3_btns.dart';
import 'package:responsive_e_commerce_website/widgets/color_row.dart';
import 'package:responsive_e_commerce_website/widgets/star_row.dart';

class BeatsStudio3Body extends StatelessWidget {
  const BeatsStudio3Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Beats Studio 3 wireless Headphone ",
          style: AppStyles.styleMediumPo20(context),
        ),
        const SizedBox(
          height: 7,
        ),
        const StarRow(),
        const SizedBox(
          height: 18,
        ),
        Text(
          'Ergonomic ear cups  with on-ear controls Up to 22  hours of  ',
          style: AppStyles.styleRegularPo14(context),
        ),
        Text(
          'listening time. Apple WI Chips & class 1 Wireless Bluetooth. ',
          style: AppStyles.styleRegularPo14(context),
        ),
        const SizedBox(
          height: 22,
        ),
        Text(
          'Price \$349.95',
          style: AppStyles.styleMediumPo18(context)
              .copyWith(color: const Color(0xff009393)),
        ),
        const SizedBox(
          height: 14,
        ),
        const ColorRow(),
        const SizedBox(
          height: 14,
        ),
        const BotttonsRow()
      ],
    );
  }
}
