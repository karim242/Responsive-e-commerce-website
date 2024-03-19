import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_e_commerce_website/utils/app_styles.dart';
import 'package:responsive_e_commerce_website/utils/assets.dart';

class StarRow extends StatelessWidget {
  const StarRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assets.imagesStar),
        const SizedBox(
          width: 8,
        ),
        SvgPicture.asset(Assets.imagesStar),
        const SizedBox(
          width: 8,
        ),
        SvgPicture.asset(Assets.imagesStar),
        const SizedBox(
          width: 8,
        ),
        SvgPicture.asset(Assets.imagesStar),
        const SizedBox(
          width: 8,
        ),
        SvgPicture.asset(Assets.imagesStar),
        const SizedBox(
          width: 22,
        ),
        Text(
          '(2000 + Reviews)',
          style: AppStyles.styleRegularPo14(context),
        ),
      ],
    );
  }
}
