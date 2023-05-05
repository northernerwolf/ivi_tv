import 'package:flutter/material.dart';

import '../../constants.dart';

enum AppTextStyles {
  s10w400,
  s10w700,
  s12w400,
  s12w500,
  s12w700,
  s14w400,
  s14w500,
  s14w600,
  s14w700,
  s16w400,
  s16w500,
  s16w600,
  s16w700,
  s16w800,
  s16w900,
  s18w500,
  s18w700,
  s20w700,
  s22w700,
  s22w900,
  s24w700,
  s26w700,
  s26w900,
  s32w700,
  s40w700,
  s60w900,
}

TextStyle getTextStyle(
  AppTextStyles textStyle, {
  color = AppConst.primaryWhite,
}) {
  switch (textStyle) {
    case AppTextStyles.s10w400:
      return TextStyle(
        color: color,
        fontSize: 10,
        fontWeight: FontWeight.w400,
        fontFamily: 'Inter',
      );
    case AppTextStyles.s10w700:
      return TextStyle(
        color: color,
        fontSize: 10,
        fontWeight: FontWeight.w700,
        fontFamily: 'Inter',
      );
    case AppTextStyles.s12w400:
      return TextStyle(
        color: color,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontFamily: 'Inter',
      );
    case AppTextStyles.s12w500:
      return TextStyle(
        color: color,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        fontFamily: 'Inter',
      );
    case AppTextStyles.s12w700:
      return TextStyle(
        color: color,
        fontSize: 12,
        fontWeight: FontWeight.w700,
        fontFamily: 'Inter',
      );
    case AppTextStyles.s14w400:
      return TextStyle(
        color: color,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'Inter',
      );
    case AppTextStyles.s14w500:
      return TextStyle(
        color: color,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: 'Inter',
      );
    case AppTextStyles.s14w600:
      return TextStyle(
        color: color,
        fontSize: 14,
        fontWeight: FontWeight.w600,
        fontFamily: 'Inter',
      );
    case AppTextStyles.s14w700:
      return TextStyle(
        color: color,
        fontSize: 14,
        fontWeight: FontWeight.w700,
        fontFamily: 'Inter',
      );
    case AppTextStyles.s16w400:
      return TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontFamily: 'Inter',
      );
    case AppTextStyles.s16w500:
      return TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: 'Inter',
      );
    case AppTextStyles.s16w600:
      return TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        fontFamily: 'Inter',
      );
    case AppTextStyles.s16w700:
      return TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: FontWeight.w700,
        fontFamily: 'Inter',
      );
    case AppTextStyles.s16w800:
      return TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: FontWeight.w800,
        fontFamily: 'Inter',
      );
    case AppTextStyles.s16w900:
      return TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: FontWeight.w900,
        fontFamily: 'Inter',
      );
    case AppTextStyles.s18w500:
      return TextStyle(
        color: color,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        fontFamily: 'Inter',
      );
    case AppTextStyles.s18w700:
      return TextStyle(
        color: color,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        fontFamily: 'Inter',
      );
    case AppTextStyles.s20w700:
      return TextStyle(
        color: color,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        fontFamily: 'Inter',
      );
    case AppTextStyles.s22w700:
      return TextStyle(
        color: color,
        fontSize: 22,
        fontWeight: FontWeight.w700,
        fontFamily: 'Inter',
      );
    case AppTextStyles.s22w900:
      return TextStyle(
        color: color,
        fontSize: 22,
        fontWeight: FontWeight.w900,
        fontFamily: 'Inter',
      );
    case AppTextStyles.s24w700:
      return TextStyle(
        color: color,
        fontSize: 24,
        fontWeight: FontWeight.w700,
        fontFamily: 'Inter',
      );
    case AppTextStyles.s26w700:
      return TextStyle(
        color: color,
        fontSize: 26,
        fontWeight: FontWeight.w700,
        fontFamily: 'Inter',
      );
    case AppTextStyles.s26w900:
      return TextStyle(
        color: color,
        fontSize: 26,
        fontWeight: FontWeight.w900,
        fontFamily: 'Inter',
      );
    case AppTextStyles.s32w700:
      return TextStyle(
        color: color,
        fontSize: 32,
        fontWeight: FontWeight.w700,
        fontFamily: 'Inter',
      );
    case AppTextStyles.s40w700:
      return TextStyle(
        color: color,
        fontSize: 40,
        fontWeight: FontWeight.w700,
        fontFamily: 'Inter',
      );
    case AppTextStyles.s60w900:
      return TextStyle(
        color: color,
        fontSize: 60,
        fontWeight: FontWeight.w900,
        fontFamily: 'Inter',
      );
    default:
      return const TextStyle(fontFamily: 'Inter');
  }
}
