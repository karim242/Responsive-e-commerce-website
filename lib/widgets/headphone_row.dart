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
    log(MediaQuery.sizeOf(context).width.toString());
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
        MediaQuery.sizeOf(context).width <= 1220
            ? const SizedBox(
                width: 20,
              )
            : const Spacer(),
        const Flexible(child: CustomTextField()),
        const SizedBox(width: 20),
        SvgPicture.asset(Assets.imagesMessage),
        const SizedBox(width: 20),
        SvgPicture.asset(Assets.imagesGroup54),
        const SizedBox(width: 20),
        Image.asset(Assets.imagesGirle)
      ],
    );
  }
}
