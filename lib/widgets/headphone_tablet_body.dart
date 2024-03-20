import 'package:flutter/material.dart';
import 'package:responsive_e_commerce_website/widgets/beats_and_list_and_explore.dart';
import 'package:responsive_e_commerce_website/widgets/headphone_row.dart';
import 'package:responsive_e_commerce_website/widgets/summer_headphone_card.dart';

class HeadPhoneTabletBody extends StatelessWidget {
  const HeadPhoneTabletBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          HeadPhoneRow(),
          SizedBox(height: 24),
          BeatsAndListAndExplore(),
          SizedBox(height: 24),
          SummerHeadPhoneCard(),
        ],
      ),
    );
  }
}
