import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_e_commerce_website/widgets/explore_popular_row.dart';
import 'package:responsive_e_commerce_website/widgets/beats_studio3_category.dart';
import 'package:responsive_e_commerce_website/widgets/explore_popular_header.dart';
import 'package:responsive_e_commerce_website/widgets/headphone_item_list_view.dart';

class BeatsAndListAndExplore extends StatelessWidget {
  const BeatsAndListAndExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 16,
        ),
        AspectRatio(aspectRatio: 733 / 313, child: BeatsStudio3Category()),
        SizedBox(
          height: 16,
        ),
        HeadPhoneItemListView(),
        SizedBox(
          height: 20,
        ),
        AllHeader(title:  "Explore Popular Categories", subtitle: 'See all',),
        SizedBox(
          height: 10,
        ),
        ExplorePopularRow(),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
