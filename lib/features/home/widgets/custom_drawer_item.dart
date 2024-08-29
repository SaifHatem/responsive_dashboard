import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/home/models/drawer_model.dart';
import 'package:responsive_dashboard/features/home/widgets/active_drawe.dart';
import 'package:responsive_dashboard/features/home/widgets/in_active_draewe_model.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.drawerModel,
    required this.isActive,
  });

  final DrawerModel drawerModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawer(drawerModel: drawerModel)
        : InActiveDrawer(drawerModel: drawerModel);
  }
}
