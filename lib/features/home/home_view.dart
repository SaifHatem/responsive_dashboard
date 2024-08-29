import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/colors.dart';
import 'package:responsive_dashboard/features/home/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: HomeViewBody(),
    );
  }
}
