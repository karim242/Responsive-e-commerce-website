import 'package:flutter/material.dart';
import 'package:responsive_e_commerce_website/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            width: 410,
            child: TextField(
      decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.zero,
          prefixIcon: const Icon(Icons.search),
          suffixIcon: const Icon(Icons.menu),
          hintText: "Search Product",
          hintStyle: AppStyles.styleMediumPo16(context)
              .copyWith(color: const Color(0xff5C5C5C))),
    ));
  }
}
