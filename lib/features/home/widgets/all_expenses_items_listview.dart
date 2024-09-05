import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/home/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/features/home/widgets/custom_expenses_widget.dart';

import '../../../core/utils/app_images.dart';

class AllExpensesItemsListview extends StatelessWidget {
  const AllExpensesItemsListview({super.key});

  static const items = [
    AllExpensesItemModel(
      image: Assets.imagesMoneys,
      title: 'Balance',
      date: 'April 2022',
      price: r'$ 20.99',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$ 20.99',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$ 20.99',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items
      //     .map((e) =>
      //         Expanded(child: CustomExpensesWidget(allExpensesItemModel: e)))
      //     .toList(),

      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;

        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: CustomExpensesWidget(allExpensesItemModel: item),
            ),
          );
        } else {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: CustomExpensesWidget(allExpensesItemModel: item),
            ),
          );
        }
      }).toList(),
    );
    // ListView.builder(
    //   scrollDirection: Axis.horizontal,
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     return CustomExpensesWidget(allExpensesItemModel: items[index]);
    //   },
    // );
  }
}
