import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_e_commerce_website/utils/assets.dart';
import 'package:responsive_e_commerce_website/widgets/custom_botton.dart';

class BotttonsRow extends StatelessWidget {
  const BotttonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: const Color(0xff009393))),
          child: SvgPicture.asset(Assets.imagesFilledHeart),
        ),
        const SizedBox(width: 20),
        const CustomBotton(
          text: 'Add to Cart',
          color: Color(0xffffffff),
          textColor: Color(0xff009393),
        ),
        const SizedBox(width: 20),
        const CustomBotton(
          text: 'Buy now',
          color: Color(0xff009393),
        ),
      ],
    );
  }
}
