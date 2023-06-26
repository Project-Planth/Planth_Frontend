import 'package:flutter/material.dart';

class AppTheme {
  static const ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF316B24),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFB2F49C),
    onPrimaryContainer: Color(0xFF012200),
    secondary: Color(0xFF54634D),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFD7E8CC),
    onSecondaryContainer: Color(0xFF121F0E),
    tertiary: Color(0xFF386668),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFBCEBEE),
    onTertiaryContainer: Color(0xFF002021),
    error: Color(0xFFBA1A1A),
    errorContainer: Color(0xFFFFDAD6),
    onError: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFF410002),
    background: Color(0xFFFCFDF6),
    onBackground: Color(0xFF1A1C18),
    surface: Color(0xFFFCFDF6),
    onSurface: Color(0xFF1A1C18),
    surfaceVariant: Color(0xFFDFE4D7),
    onSurfaceVariant: Color(0xFF43483F),
    outline: Color(0xFF73796E),
    onInverseSurface: Color(0xFFF1F1EA),
    inverseSurface: Color(0xFF2F312D),
    inversePrimary: Color(0xFF97D783),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF316B24),
    outlineVariant: Color(0xFFC3C8BC),
    scrim: Color(0xFF000000),
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF97D783),
    onPrimary: Color(0xFF043900),
    primaryContainer: Color(0xFF18520D),
    onPrimaryContainer: Color(0xFFB2F49C),
    secondary: Color(0xFFBBCBB1),
    onSecondary: Color(0xFF273422),
    secondaryContainer: Color(0xFF3D4B37),
    onSecondaryContainer: Color(0xFFD7E8CC),
    tertiary: Color(0xFFA0CFD1),
    onTertiary: Color(0xFF003739),
    tertiaryContainer: Color(0xFF1E4D50),
    onTertiaryContainer: Color(0xFFBCEBEE),
    error: Color(0xFFFFB4AB),
    errorContainer: Color(0xFF93000A),
    onError: Color(0xFF690005),
    onErrorContainer: Color(0xFFFFDAD6),
    background: Color(0xFF1A1C18),
    onBackground: Color(0xFFE2E3DC),
    surface: Color(0xFF1A1C18),
    onSurface: Color(0xFFE2E3DC),
    surfaceVariant: Color(0xFF43483F),
    onSurfaceVariant: Color(0xFFC3C8BC),
    outline: Color(0xFF8D9387),
    onInverseSurface: Color(0xFF1A1C18),
    inverseSurface: Color(0xFFE2E3DC),
    inversePrimary: Color(0xFF316B24),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF97D783),
    outlineVariant: Color(0xFF43483F),
    scrim: Color(0xFF000000),
  );

  static const TextStyle quotes = TextStyle(
    fontFamily: 'Roboto-LightItalic.ttf',
    fontSize: 20,
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.italic,
  );
  static const TextStyle quotes2 = TextStyle(
    fontFamily: 'Roboto-LightItalic.ttf',
    fontSize: 20,
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.italic,
  );
  static const TextStyle quotes3 = TextStyle(
    fontSize: 37,
    fontFamily: 'Roboto-Light',
    fontWeight: FontWeight.w300
  );
  static const TextStyle login = TextStyle(
    fontFamily: 'Roboto-Light.ttf',
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );
  static TextStyle googleLogin = TextStyle(
    fontFamily: 'Roboto-Medium.ttf',
    // fontWeight: FontWeight.w400,
    fontSize: 18,
    color: AppTheme.lightColorScheme.background
  );
  static InputDecoration signupForm = InputDecoration(

  );
}
