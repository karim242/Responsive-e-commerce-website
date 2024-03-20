
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_e_commerce_website/utils/app_styles.dart';
import 'package:responsive_e_commerce_website/utils/assets.dart';

class BlueStarRow extends StatelessWidget {
  const BlueStarRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 16),
          child: AspectRatio(
              aspectRatio: 1, child: SvgPicture.asset(Assets.imagesBlueStar)),
        ),
        const SizedBox(width: 8),
        FittedBox(
          child: Text(
            '4.3',
            style: AppStyles.styleMediumRobp14(context),
          ),
        ),
        // Spacer()
        const SizedBox(
          width: 60,
        ),
        const FittedBox(
          child: CircleAvatar(
              radius: 16,
              backgroundColor: Color(0xff009393),
              child: Icon(
                Icons.add,
                color: Colors.white,
              )),
        )
      ],
    );
  }
}
