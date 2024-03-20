import 'package:flutter/material.dart';
import 'package:responsive_e_commerce_website/models/daily_deals_items_model.dart';
import 'package:responsive_e_commerce_website/utils/assets.dart';
import 'package:responsive_e_commerce_website/widgets/daily_deals_list_title.dart';

class DailyDealsListView extends StatelessWidget {
  const DailyDealsListView({super.key});

  final List<DailyDealsItemModel> item = const [
    DailyDealsItemModel(
        image: Assets.imagesDailyDeal2,
        title: 'beats new studio blue headset ',
        subtitle: '256 Reviews  1628 Orders',
        price: '250'),
    DailyDealsItemModel(
        image: Assets.imagesDailyDeals1,
        title: 'beats pro wireless headset ',
        subtitle: '205 Reviews  1906 Orders',
        price: '250'),
    DailyDealsItemModel(
        image: Assets.imagesDailyDeal3,
        title: ' Apple AirPods pro',
        subtitle: '991 Reviews  8682 Orders',
        price: '479'),
    DailyDealsItemModel(
        image: Assets.imagesDailyDeal4,
        title: 'Lenovo Wired Headphone ',
        subtitle: '364 Reviews  2791 Orders',
        price: '150'),
    DailyDealsItemModel(
        image: Assets.imagesDailyDeal5,
        title: 'Logic3 Cavallino T250 Headset ',
        subtitle: '128 Reviews  0850 Orders',
        price: '330'),
    DailyDealsItemModel(
        image: Assets.imagesDailyDeal6,
        title: 'Musicians Choice stereo ',
        subtitle: '116 Reviews  0640 Orders',
        price: '199'),
    DailyDealsItemModel(
        image: Assets.imagesDailyDeals1,
        title: 'beats new studio blue headset ',
        subtitle: '256 Reviews  1628 Orders',
        price: '500'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: item
          .map((e) => Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: DailyDealListTile(
                  item: e,
                ),
          ))
          .toList(),
    );
  }
}
