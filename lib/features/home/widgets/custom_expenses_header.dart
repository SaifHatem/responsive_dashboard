import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomExpensesHeader extends StatelessWidget {
  const CustomExpensesHeader({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: const ShapeDecoration(
            color: Color(0xffFAFAFA),
            shape: OvalBorder(),
          ),
          child: Center(
            child: SvgPicture.asset(
              image,
            ),
          ),
        ),
        const Spacer(),
        IconButton(
          padding: const EdgeInsets.all(0),
          onPressed: () {},
          icon: Transform.rotate(
            angle: 3.14,
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
            ),
          ),
        ),
      ],
    );
  }
}
