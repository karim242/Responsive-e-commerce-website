import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_e_commerce_website/utils/assets.dart';
import 'package:responsive_e_commerce_website/widgets/beats_studio3_body.dart';
import 'package:responsive_e_commerce_website/widgets/custom_container.dart';

class BeatsStudio3Category extends StatelessWidget {
  const BeatsStudio3Category({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Flexible(
        child: Row(
          children: [
            Expanded(child: Image.asset(Assets.imagesRectangle9)),
            const SizedBox(
              width: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(22.0),
              child: Expanded(child: BeatsStudio3Body()),
            ),
          ],
        ),
      ),
    );
  }
}
