import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/home/widgets/all_expenses.dart';
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
        const SizedBox(
          width: 16,
        ),
        const Expanded(
          flex: 3,
          child: Column(
            children: [
              Expanded(
                child: AllExpenses(),
              ),
              // Expanded(
              //   child: Padding(
              //     padding:
              //         const EdgeInsets.only(bottom: 20.0, right: 20, left: 20),
              //     child: Container(
              //       decoration: BoxDecoration(
              //         color: Colors.indigo,
              //         borderRadius: BorderRadius.circular(12),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(),
        ),
      ],
    );
  }
}
