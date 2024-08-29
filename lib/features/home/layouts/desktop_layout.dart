import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/home/widgets/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 3,
          child: Container(),
        ),
        Expanded(
          flex: 2,
          child: Container(),
        ),
      ],
    );
  }
}
