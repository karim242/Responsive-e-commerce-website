import 'package:flutter/cupertino.dart';
import 'package:responsive_e_commerce_website/widgets/beats_studio3_category.dart';

class BeatsAndListAndExplore extends StatelessWidget {
  const BeatsAndListAndExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        BeatsStudio3Category(),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
