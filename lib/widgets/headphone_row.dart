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
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Column(
            children: [
              Text(
                "Headphone",
                style: AppStyles.styleMediumPo26(context),
              ),
              Text(
                "from top brands",
                style: AppStyles.styleRegularPo16(context),
              )
            ],
          ),
        ),
        const Spacer(),
        const CustomTextField(),
        const SizedBox(width: 20),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 48),
          child: AspectRatio(
              aspectRatio: 1, child: SvgPicture.asset(Assets.imagesMessage)),
        ),
        const SizedBox(width: 20),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 48),
          child: AspectRatio(
            aspectRatio: 1,
            child: SvgPicture.asset(Assets.imagesGroup54),
          ),
        ),
        const SizedBox(width: 20),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 48),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(Assets.imagesGirle),
          ),
        )
      ],
    );
  }
}
