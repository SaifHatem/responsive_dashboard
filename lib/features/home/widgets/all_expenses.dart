import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/home/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/features/home/widgets/custom_expenses_widget.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
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
                height: 20,
              ),
              Expanded(
                child: Row(
                  children: [
                    CustomExpensesWidget(),
                    CustomExpensesWidget(),
                    CustomExpensesWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
