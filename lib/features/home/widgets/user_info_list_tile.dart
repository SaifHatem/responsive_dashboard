import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle});
  final String image, title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xfffafafa),
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            style: AppStyles.fontSemiBold16,
          ),
        ),
        subtitle: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            subTitle,
            style: AppStyles.fontRegular12,
          ),
        ),
      ),
    );
  }
}
