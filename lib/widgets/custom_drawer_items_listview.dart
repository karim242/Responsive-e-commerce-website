import 'package:flutter/material.dart';
import 'package:responsive_e_commerce_website/models/drawer_items_model.dart';
import 'package:responsive_e_commerce_website/utils/assets.dart';
import 'package:responsive_e_commerce_website/widgets/custom_drawer_list_tile.dart';

class CustomDrawerListView extends StatefulWidget {
  const CustomDrawerListView({
    super.key,
  });

  @override
  State<CustomDrawerListView> createState() => _CustomDrawerListViewState();
}

class _CustomDrawerListViewState extends State<CustomDrawerListView> {
  final List<DrawerItemsModel> items = const [
    DrawerItemsModel(title: "Home", image: Assets.imagesHome),
    DrawerItemsModel(title: "Explore", image: Assets.imagesExplore),
    DrawerItemsModel(title: "Saved", image: Assets.imagesSaved),
    DrawerItemsModel(title: "Cart", image: Assets.imagesCart),
    DrawerItemsModel(title: "Selling", image: Assets.imagesSelling),
    DrawerItemsModel(title: "Profile", image: Assets.imagesProfile),
    DrawerItemsModel(
        title: "Prchase History", image: Assets.imagesPrchaseHistory),
    DrawerItemsModel(title: "Contact us", image: Assets.imagesContactus),
    DrawerItemsModel(title: "Settings", image: Assets.imagesSetting),
  ];
  int isActive = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                isActive = index;
              });
            },
            child: CustomDrawerListTile(
              item: items[index],
              isActive: isActive == index,
            ),
          );
        });
  }
}
