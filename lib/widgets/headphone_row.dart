import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_e_commerce_website/utils/app_styles.dart';
import 'package:responsive_e_commerce_website/utils/assets.dart';
import 'package:responsive_e_commerce_website/widgets/custom_text_field.dart';

class HeadPhoneRow extends StatelessWidget {
  const HeadPhoneRow({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    log(width.toString());
    return Row(
      //  mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            FittedBox(
              child: Text(
                "Headphone",
                style: AppStyles.styleMediumPo26(context),
              ),
            ),
            FittedBox(
              child: Text(
                "from top brands",
                style: AppStyles.styleRegularPo16(context),
              ),
            )
          ],
        ),
        width <= 1220
            ? const SizedBox(
                width: 20,
              )
            : const Spacer(),
        const Flexible(child: CustomTextField()),
        width <360? const SizedBox(width: 20):const SizedBox(width:1),
        SvgPicture.asset(Assets.imagesMessage),
         width < 360? const SizedBox(width: 20):const SizedBox(width:1),
         SvgPicture.asset(Assets.imagesGroup54),
         width <360? const SizedBox(width: 20):const SizedBox(width:1),
        Image.asset(Assets.imagesGirle)
      ],
    );
  }
}
