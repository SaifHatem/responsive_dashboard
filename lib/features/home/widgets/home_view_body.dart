import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/home/layouts/desktop_layout.dart';
import 'package:responsive_dashboard/features/home/layouts/mobile_layout.dart';
import 'package:responsive_dashboard/features/home/layouts/tablet_layout.dart';
import 'package:responsive_dashboard/features/home/widgets/adaptive_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => const MobileLayout(),
      tabletLayout: (context) => const TabletLayout(),
      desktopLayout: (context) => const DesktopLayout(),
    );
  }
}
