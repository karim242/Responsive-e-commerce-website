import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_e_commerce_website/widgets/beats_and_list_and_explore.dart';
import 'package:responsive_e_commerce_website/widgets/headphone_row.dart';

class HeadPhoneBody extends StatelessWidget {
  const HeadPhoneBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 20,
        ),
        HeadPhoneRow(),
        Row(children: [
          Expanded(child: BeatsAndListAndExplore()),
         
        ]),
      ],
    );
  }
}
