import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class CustomExpensesWidget extends StatelessWidget {
  const CustomExpensesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.grey,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    Assets.imagesIncome,
                  ),
                  IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {},
                    icon: Transform.rotate(
                      angle: 3.14,
                      child: const Icon(
                        Icons.arrow_back,
                      ),
                    ),
                  ),
                ],
              ),
              const Expanded(child: SizedBox()),
              const Text(
                'Income',
                style: AppStyles.fontSemiBold16,
              ),
              const Text(
                'April 2022',
                style: AppStyles.fontRegular14,
              ),
              const Text(
                '\$20,129',
                style: AppStyles.fontSemiBold24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
