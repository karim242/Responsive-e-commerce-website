import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_e_commerce_website/widgets/explore_popular_row.dart';
import 'package:responsive_e_commerce_website/widgets/beats_studio3_category.dart';
import 'package:responsive_e_commerce_website/widgets/explore_popular_header.dart';
import 'package:responsive_e_commerce_website/widgets/headphone_item_list_view.dart';

class BeatsAndListAndExplore extends StatelessWidget {
  const BeatsAndListAndExplore({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 16,
        ),
        const AspectRatio(
            aspectRatio: 733 / 313, child: BeatsStudio3Category()),
        const SizedBox(
          height: 16,
        ),
        const HeadPhoneItemListView(),
        const SizedBox(
          height: 20,
        ),
        const AllHeader(
          title: "Explore Popular Categories",
          subtitle: 'See all',
        ),
        const SizedBox(
          height: 10,
        ),
        width < 1200
            ? const FittedBox(child: ExplorePopularRow())
            : ExplorePopularRow(),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
