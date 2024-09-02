import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/features/home/widgets/custom_drop_down.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.fontSemiBold20,
        ),
        Spacer(),
        Expanded(
          child: SizedBox(
            child: CustomDropDown(),
          ),
        ),
      ],
    );
  }
}
