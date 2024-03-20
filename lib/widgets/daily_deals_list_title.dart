import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_e_commerce_website/models/daily_deals_items_model.dart';
import 'package:responsive_e_commerce_website/utils/app_styles.dart';

class DailyDealListTile extends StatelessWidget {
  const DailyDealListTile({super.key, required this.item});
  final DailyDealsItemModel item;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: CircleAvatar(
          radius: 35,
          backgroundColor: const Color(0xffF5F5F5),
          child: SvgPicture.asset(item.image),
        ),
        title: Text(
          item.title,
          style: AppStyles.styleMediumPo12(context),
        ),
        subtitle: Text(
          item.subtitle,
          style: AppStyles.styleMediumPo12(context)
              .copyWith(color: const Color(0xff5C5C5C)),
        ),
        trailing: Text(
          'Price \$${item.price}',
          style: AppStyles.styleMediumPo12(context)
              .copyWith(color: const Color(0xff5C5C5C)),
        ),
      ),
    );
  }
}
