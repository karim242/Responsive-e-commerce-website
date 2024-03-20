import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_e_commerce_website/utils/assets.dart';
import 'package:responsive_e_commerce_website/widgets/explore_popular_card.dart';

class ExplorePopularRow extends StatelessWidget {
  const ExplorePopularRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ExplorePopularCard(
          title: 'Popular  top 10 brands',
          img1: Assets.imagesEllipse1,
          img2: Assets.imagesEllipse2,
          img3: Assets.imagesEllipse3,
          img4: Assets.imagesEllipse4,
        ),
        ExplorePopularCard(
          title: 'Newest Sellers',
          img1: Assets.imagesEllipse21,
          img2: Assets.imagesEllipse22,
          img3: Assets.imagesEllipse23,
          img4: Assets.imagesEllipse24,
        ),
      ],
    );
  }
}
