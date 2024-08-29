import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/features/home/models/drawer_model.dart';
import 'package:responsive_dashboard/features/home/widgets/custom_drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

int activeIndex = 0;

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerModel> items = [
    const DrawerModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    const DrawerModel(image: Assets.imagesTransaction, title: 'My Transaction'),
    const DrawerModel(image: Assets.imagesStatistics, title: 'Statistics'),
    const DrawerModel(image: Assets.imagesWallet, title: 'Wallet Account'),
    const DrawerModel(
        image: Assets.imagesMyInvestment, title: 'My Investments'),
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
                print(activeIndex);
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: CustomDrawerItem(
              drawerModel: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
