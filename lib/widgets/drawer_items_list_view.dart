import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_model_item.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int activeIndex = 0;

  final List<DrawerItemModel> items = const [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    DrawerItemModel(title: 'My Transaction', image: Assets.imagesMyTransctions),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWalletAccount),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesMyInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                  debugPrint('activeIndex: $activeIndex');
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DrawerItem(
                  drawerItemModel: items[index],
                  isActive: activeIndex == index),
            ),
          );
        });
  }
}
