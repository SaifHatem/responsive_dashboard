import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/features/home/models/drawer_model.dart';
import 'package:responsive_dashboard/features/home/widgets/drawer_items_list_view.dart';
import 'package:responsive_dashboard/features/home/widgets/in_active_draewe_model.dart';
import 'package:responsive_dashboard/features/home/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: UserInfoListTile(
                image: Assets.imagesAvatar3,
                title: 'Lekan Okeowo',
                subTitle: 'demo@gmail.com',
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                InActiveDrawer(
                  drawerModel: DrawerModel(
                      image: Assets.imagesSetting, title: 'Setting system'),
                ),
                InActiveDrawer(
                  drawerModel: DrawerModel(
                      image: Assets.imagesLogout, title: 'Logout account'),
                ),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
