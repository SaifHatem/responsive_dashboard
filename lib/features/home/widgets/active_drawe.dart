import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/features/home/models/drawer_model.dart';

class ActiveDrawer extends StatelessWidget {
  const ActiveDrawer({
    super.key,
    required this.drawerModel,
  });

  final DrawerModel drawerModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerModel.image),
      title: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(
          drawerModel.title,
          style: AppStyles.fontBold16,
        ),
      ),
      trailing: Container(
        width: 3.27,
        decoration: const BoxDecoration(color: Color(0xff4eb7f2)),
      ),
    );
  }
}
