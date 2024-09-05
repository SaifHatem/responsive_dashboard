import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/home/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/features/home/widgets/all_expenses_items_listview.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 20),
        child: Column(
          children: [
            AllExpensesHeader(),
            SizedBox(
              height: 16,
            ),

            AllExpensesItemsListview(),
            // Wrapping the Row in a Container to provide finite width constraints
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
