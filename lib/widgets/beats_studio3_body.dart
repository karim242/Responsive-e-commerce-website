import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            "Beats Studio 3 wireless Headphone ",
            style: AppStyles.styleMediumPo20(context),
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        const StarRow(),
        const SizedBox(
          height: 18,
        ),
        FittedBox(
          child: Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            'Ergonomic ear cups  with on-ear controls Up to 22  hours of',
            style: AppStyles.styleRegularPo14(context),
          ),
        ),
        FittedBox(
          child: Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            'listening time. Apple WI Chips & class 1 Wireless Bluetooth. ',
            style: AppStyles.styleRegularPo14(context),
          ),
        ),
        const SizedBox(
          height: 22,
        ),
        FittedBox(
          child: Text(
            'Price \$349.95',
            style: AppStyles.styleMediumPo18(context)
                .copyWith(color: const Color(0xff009393)),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const FittedBox(child: ColorRow()),
        const SizedBox(
          height: 14,
        ),
        const FittedBox(child: BotttonsRow())
      ],
    );
  }
}
