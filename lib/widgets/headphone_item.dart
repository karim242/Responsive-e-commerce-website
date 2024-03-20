import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_e_commerce_website/models/headphone_item_model.dart';
import 'package:responsive_e_commerce_website/utils/app_styles.dart';
import 'package:responsive_e_commerce_website/widgets/blue_star_row.dart';
import 'package:responsive_e_commerce_website/widgets/custom_container.dart';

class HeadPhoneItem extends StatelessWidget {
  const HeadPhoneItem({super.key, required this.item});
  final HeadPhoneItemModel item;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 125),
              child: AspectRatio(
                  aspectRatio: 1, child: SvgPicture.asset(item.image)),
            ),
          ),
          const SizedBox(height: 18),
          FittedBox(
            child: Text(
              item.title,
              style: AppStyles.styleSemiBoldOpen14(context),
            ),
          ),
          const SizedBox(height: 8),
          FittedBox(
            child: Text(
              'Price \$${item.price}',
              style: AppStyles.styleSemiBoldOpen14(context)
                  .copyWith(color: const Color(0xff5C5C5C)),
            ),
          ),
          const SizedBox(height: 8),
          const BlueStarRow()
        ]),
      ),
    );
  }
}
