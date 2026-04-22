import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme createTextTheme(
  BuildContext context,
  String bodyFontString,
  String displayFontString,
) {
  final baseTextTheme = Theme.of(context).textTheme;
  final bodyTextTheme = GoogleFonts.getTextTheme(
    bodyFontString,
    baseTextTheme,
  );
  final displayTextTheme = GoogleFonts.getTextTheme(
    displayFontString,
    baseTextTheme,
  );
  final textTheme = displayTextTheme.copyWith(
    headlineLarge: displayTextTheme.headlineLarge!.copyWith(
      fontWeight: .bold,
    ),
    headlineMedium: displayTextTheme.headlineMedium,
    headlineSmall: displayTextTheme.headlineSmall,
    titleLarge: bodyTextTheme.titleLarge!.copyWith(fontWeight: .bold),
    titleMedium: bodyTextTheme.titleMedium!.copyWith(
      fontWeight: .normal,
    ),
    titleSmall: bodyTextTheme.titleSmall!.copyWith(fontWeight: .w200),
    bodyLarge: bodyTextTheme.bodyLarge!.copyWith(fontWeight: .bold),
    bodyMedium: bodyTextTheme.bodyMedium,
    bodySmall: bodyTextTheme.bodySmall,
    labelLarge: bodyTextTheme.labelLarge!.copyWith(fontWeight: .bold),
    labelMedium: bodyTextTheme.labelMedium,
    labelSmall: bodyTextTheme.labelSmall,
  );
  return textTheme;
}
