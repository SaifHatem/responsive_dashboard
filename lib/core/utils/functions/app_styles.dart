import 'package:flutter/material.dart';

abstract class AppStyles {
  static const TextStyle fontRegular16 = TextStyle(
    fontSize: 16,
    color: Color(0xff064061),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static const TextStyle fontMedium16 = TextStyle(
    fontSize: 16,
    color: Color(0xff064061),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );

  static const TextStyle fontSemiBold16 = TextStyle(
    fontSize: 16,
    color: Color(0xff064061),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  //! 5 this color && 2 green && one red
  static const TextStyle fontSemiBold20 = TextStyle(
    fontSize: 20,
    color: Color(0xff064061),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  static const TextStyle fontRegular12 = TextStyle(
    fontSize: 12,
    color: Color(0xffAAAAAA),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  //! 2 white && 2 this color
  static const TextStyle fontSemiBold24 = TextStyle(
    fontSize: 24,
    color: Color(0xff4EB7F2),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  //! 2 this color && 1 white
  static const TextStyle fontRegular14 = TextStyle(
    fontSize: 14,
    color: Color(0xffAAAAAA),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  //! 1 this color && 1 white
  static const TextStyle fontSemiBold18 = TextStyle(
    fontSize: 18,
    color: Color(0xff4EB7F2),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  //! just one
  static const TextStyle fontBold16 = TextStyle(
    fontSize: 24,
    color: Color(0xff4EB7F2),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  );

  //! just one
  static const TextStyle fontMedium20 = TextStyle(
    fontSize: 20,
    color: Color(0xffFFFFFF),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
}
