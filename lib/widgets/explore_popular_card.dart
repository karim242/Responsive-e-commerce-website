import 'package:flutter/material.dart';
import 'package:responsive_e_commerce_website/utils/app_styles.dart';
import 'package:responsive_e_commerce_website/widgets/custom_container.dart';

class ExplorePopularCard extends StatelessWidget {
  const ExplorePopularCard(
      {super.key,
      required this.title,
      required this.img1,
      required this.img2,
      required this.img3,
      required this.img4});
  final String title;
  final String img1, img2, img3, img4;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Row(
          children: [
            Image.asset(img1),
            Image.asset(img2),
            Image.asset(img3),
            Image.asset(img4),
            const SizedBox(
              width: 7,
            ),
            Container(
              width: 2,
              height: 50,
              color: const Color(0xff5C5C5C),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppStyles.styleMediumRobp14(context)
                      .copyWith(color: const Color(0xff5C5C5C)),
                ),
                Text(
                  '5,400 + Orders & Reviews',
                  style: AppStyles.styleMediumRobp12(context)
                      .copyWith(color: const Color(0xff5C5C5C)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
