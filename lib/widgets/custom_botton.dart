
import 'package:flutter/material.dart';
import 'package:responsive_e_commerce_website/utils/app_styles.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({
    super.key,
    required this.text,
    required this.color,
    this.textColor = Colors.white,
  });
  final String text;
  final Color color;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: color,
            shape: RoundedRectangleBorder(
                side: const BorderSide(color: Color(0xff009393)),
                borderRadius: BorderRadius.circular(10))),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Text(
            text,
            style:
                AppStyles.styleMediumPo16(context).copyWith(color: textColor),
          ),
        ));
  }
}
