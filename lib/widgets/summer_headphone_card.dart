import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_e_commerce_website/utils/assets.dart';
import 'package:responsive_e_commerce_website/widgets/custom_container.dart';
import 'package:responsive_e_commerce_website/widgets/daily_deals_list_view.dart';
import 'package:responsive_e_commerce_website/widgets/explore_popular_header.dart';

class SummerHeadPhoneCard extends StatelessWidget {
  const SummerHeadPhoneCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          AspectRatio(
              aspectRatio: 381 / 220,
              child: SvgPicture.asset(Assets.imagesMask)),
          const SizedBox(
            height: 15,
          ),
          const AllHeader(
            title: "Daily Deals ",
            subtitle: 'View all',
          ),
          const SizedBox(
            height: 15,
          ),
          const CustomContainer(child: DailyDealsListView())
        ],
      ),
    );
  }
}
