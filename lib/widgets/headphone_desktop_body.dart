import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_e_commerce_website/widgets/beats_and_list_and_explore.dart';
import 'package:responsive_e_commerce_website/widgets/headphone_row.dart';
import 'package:responsive_e_commerce_website/widgets/summer_headphone_card.dart';

class HeadPhoneDesktopBody extends StatelessWidget {
  const HeadPhoneDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Expanded(child: HeadPhoneRow()),
        // (child: Row(),),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: BeatsAndListAndExplore(),
            ),
            Expanded(
              flex: 1,
              child: SummerHeadPhoneCard(),
            ),
          ],
        ),
      ],
    );
  }
}
