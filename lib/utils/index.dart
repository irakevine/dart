import 'package:flutter/material.dart';

//Card Approvals

Color getColorFromApprovalString(String colorName) {
  String cleanedColorName = colorName.replaceAll(' ', '').toLowerCase();

  switch (cleanedColorName) {
    case 'businessleave':
      return const Color(0xFFFF7133);
    case 'annualleave':
      return const Color(0xFF338FFF);
    case 'long-termsick':
      return const Color(0xFF2DB8B8);
    case 'short-termsick':
      return const Color(0xFFFFB833);
    case 'studyleave':
      return const Color(0xFF17701F);
    case 'maternityleave':
      return const Color(0xFFEE33FF);
    case 'Circumstantialleave':
      return const Color(0xFFFE993C);
    case 'Miscellaneousleave':
      return const Color(0xFF73E5F4);
    case 'Traveldayleave':
      return const Color(0xFFF4577B);
    case 'Workfromhomeleave':
      return const Color(0xFF9747FF);
    case 'Compassionateleave':
      return const Color(0xFFF56284);
    default:
      return Colors.grey;
  }
}

//Cards leave types
Color getColorFromString(String colorName) {
  String cleanedColorName = colorName.replaceAll(' ', '').toLowerCase();

  switch (cleanedColorName) {
    case 'businessleave':
      return const Color(0xFFFF7133);
    case 'annualleave':
      return const Color(0xFF338FFF);
    case 'long-termsick':
      return const Color(0xFF2DB8B8);
    case 'short-termsick':
      return const Color(0xFFFFB833);
    case 'studyleave':
      return const Color(0xFF17701F);
    case 'maternityleave':
      return Color.fromARGB(136, 238, 51, 255);
    case 'Circumstantialleave':
      return const Color(0xFFFE993C);
    case 'Miscellaneousleave':
      return const Color(0xFF73E5F4);
    case 'Traveldayleave':
      return const Color(0xFFF4577B);
    case 'Workfromhomeleave':
      return const Color(0xFF9747FF);
    case 'Compassionateleave':
      return const Color(0xFFF56284);
    default:
      return Colors.grey;
  }
}

Color getBgColorFromStringStatus(String colorName) {
  String cleanedColorName = colorName.replaceAll(' ', '').toLowerCase();

  switch (cleanedColorName) {
    case 'approved':
      return const Color(0xFF25BA34);
    case 'declined':
      return const Color(0xFFE62E2E);
    case 'pending':
      return const Color(0xFF2DB8B8);

    default:
      return Colors.grey;
  }
}

Color getLeaveTypeIconContainerBg(String colorName) {
  // Remove spaces and convert to lowercase
  String cleanedColorName = colorName.replaceAll(' ', '').toLowerCase();

  switch (cleanedColorName) {
    case 'businessleave':
      return const Color(0xFFFFD3C0);
    case 'annualleave':
      return const Color(0xFFC9E0FF);
    case 'long-termsick':
      return const Color(0xFFBCF8FF);
    case 'short-termsick':
      return const Color(0xFFFFE3AE);
    case 'studyleave':
      return const Color(0xFFCAF6D2);
    case 'maternityleave':
      return const Color(0xFFF4BEF8);
    // Add more color cases as needed
    default:
      return Colors.grey; // Default color for unknown names
  }
}

Color leaveCardTypeContainerBg(String colorName) {
  // Remove spaces and convert to lowercase
  String cleanedColorName = colorName.replaceAll(' ', '').toLowerCase();

  switch (cleanedColorName) {
    case 'businessleave':
      return const Color(0xFFFDF1EC);
    case 'annualleave':
      return const Color(0xFFE0EDFF);
    case 'long-termsick':
      return const Color(0xFFDFFBFE);
    case 'short-termsick':
      return const Color(0xFFFFF4E0);
    case 'studyleave':
      return const Color(0xFFECFDEF);
    case 'maternityleave':
      return const Color(0xFFFDE0FF);
    case 'Circumstantialleave':
      return const Color(0xFFFEF5ED);
    case 'Miscellaneousleave':
      return const Color(0xFFDBF0F4);
    case 'Travel Day leave':
      return const Color(0xFFF0C3CD);
    case 'Workfromhomeleave':
      return const Color(0xFFE9D9FF);
    case 'Compassionateleave':
      return const Color(0xFFFBE8EC);
    // Add more color cases as needed
    default:
      return Colors.grey; // Default color for unknown names
  }
}
