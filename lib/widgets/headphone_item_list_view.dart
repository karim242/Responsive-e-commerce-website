import 'package:flutter/material.dart';
import 'package:responsive_e_commerce_website/models/headphone_item_model.dart';
import 'package:responsive_e_commerce_website/utils/assets.dart';
import 'package:responsive_e_commerce_website/widgets/headphone_item.dart';

class HeadPhoneItemListView extends StatelessWidget {
  const HeadPhoneItemListView({super.key});
  final List<HeadPhoneItemModel> item = const [
    HeadPhoneItemModel(
        image: Assets.imagesGroup1,
        title: 'Original Beats Solo Pro',
        price: '20.99'),
    HeadPhoneItemModel(
        image: Assets.imagesGroup2,
        title: 'Beats Studio3 Bluetooth',
        price: '33.99'),
    HeadPhoneItemModel(
        image: Assets.imagesGroup3,
        title: 'Beats Solo3 Wireless',
        price: '16.99'),
    HeadPhoneItemModel(
        image: Assets.imagesGroup4,
        title: 'Beats Solo3 Wireless',
        price: '25.99'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: item
            .map((e) => Padding(
                  padding: const EdgeInsets.only(right: 29),
                  child: HeadPhoneItem(
                    item: e,
                  ),
                ))
            .toList(),
      ),
    );
  }
}
