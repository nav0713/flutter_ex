import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/// The [AppTheme] defines light and dark themes for the app.
///
/// Theme setup for FlexColorScheme package v8.
/// Use same major flex_color_scheme package version. If you use a
/// lower minor version, some properties may not be supported.
/// In that case, remove them after copying this theme to your
/// app or upgrade the package to version 8.2.0.
///
/// Use it in a [MaterialApp] like this:
///
/// MaterialApp(
///   theme: AppTheme.light,
///   darkTheme: AppTheme.dark,
///   darkTheme: AppTheme.dark,
/// );
abstract final class AppTheme {
  // The FlexColorScheme defined light mode ThemeData.
  static ThemeData light = FlexThemeData.light(
    // User defined custom colors made with FlexSchemeColor() API.
    colors: const FlexSchemeColor(
      primary: Color(0xFF004881),
      primaryContainer: Color(0xFFD0E4FF),
      secondary: Color(0xFFAC3306),
      secondaryContainer: Color(0xFFFFDBCF),
      tertiary: Color(0xFF006875),
      tertiaryContainer: Color(0xFF95F0FF),
      appBarColor: Color(0xFFFFDBCF),
      error: Color(0xFFBA1A1A),
      errorContainer: Color(0xFFFFDAD6),
    ),
    // Input color modifiers.
    usedColors: 7,
    useMaterial3ErrorColors: true,
    // Surface color adjustments.
    surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
    blendLevel: 4,
    // Convenience direct styling properties.
    appBarStyle: FlexAppBarStyle.background,
    bottomAppBarElevation: 1.0,
    // Component theme configurations for light mode.
    subThemesData: const FlexSubThemesData(
      interactionEffects: true,
      tintedDisabledControls: true,
      blendOnLevel: 10,
      useM2StyleDividerInM3: true,
      thickBorderWidth: 2.0,
      filledButtonRadius: 14.0,
      elevatedButtonSchemeColor: SchemeColor.onPrimaryContainer,
      elevatedButtonSecondarySchemeColor: SchemeColor.primaryContainer,
      inputDecoratorSchemeColor: SchemeColor.primary,
      inputDecoratorIsFilled: true,
      inputDecoratorBackgroundAlpha: 12,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      inputDecoratorRadius: 8.0,
      inputDecoratorUnfocusedHasBorder: false,
      inputDecoratorPrefixIconSchemeColor: SchemeColor.primary,
      alignedDropdown: true,
      appBarScrolledUnderElevation: 8.0,
      drawerElevation: 1.0,
      drawerWidth: 290.0,
      bottomNavigationBarSelectedLabelSchemeColor: SchemeColor.secondary,
      bottomNavigationBarMutedUnselectedLabel: false,
      bottomNavigationBarSelectedIconSchemeColor: SchemeColor.secondary,
      bottomNavigationBarMutedUnselectedIcon: false,
      searchBarElevation: 1.0,
      searchViewElevation: 1.0,
      searchUseGlobalShape: true,
      navigationBarSelectedLabelSchemeColor: SchemeColor.onSecondaryContainer,
      navigationBarSelectedIconSchemeColor: SchemeColor.onSecondaryContainer,
      navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
      navigationBarElevation: 1.0,
      navigationBarHeight: 72.0,
      navigationRailSelectedLabelSchemeColor: SchemeColor.onSecondaryContainer,
      navigationRailSelectedIconSchemeColor: SchemeColor.onSecondaryContainer,
      navigationRailUseIndicator: true,
      navigationRailIndicatorSchemeColor: SchemeColor.secondaryContainer,
      navigationRailIndicatorOpacity: 1.00,
    ),
    // Direct ThemeData properties.
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
  );

  // The FlexColorScheme defined dark mode ThemeData.
  static ThemeData dark = FlexThemeData.dark(
    // Computing from light scheme using defaultError and toDark() methods.
    // User defined custom colors made with FlexSchemeColor() API.
    colors: const FlexSchemeColor(
      primary: Color(0xFF004881),
      primaryContainer: Color(0xFFD0E4FF),
      secondary: Color(0xFFAC3306),
      secondaryContainer: Color(0xFFFFDBCF),
      tertiary: Color(0xFF006875),
      tertiaryContainer: Color(0xFF95F0FF),
      appBarColor: Color(0xFFFFDBCF),
      error: Color(0xFFBA1A1A),
      errorContainer: Color(0xFFFFDAD6),
    ).defaultError.toDark(40, false),
    // Input color modifiers.
    usedColors: 7,
    useMaterial3ErrorColors: true,
    // Surface color adjustments.
    surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
    blendLevel: 10,
    // Convenience direct styling properties.
    appBarStyle: FlexAppBarStyle.background,
    bottomAppBarElevation: 2.0,
    // Component theme configurations for dark mode.
    subThemesData: const FlexSubThemesData(
      interactionEffects: true,
      tintedDisabledControls: true,
      blendOnLevel: 20,
      blendOnColors: true,
      useM2StyleDividerInM3: true,
      thickBorderWidth: 2.0,
      filledButtonRadius: 14.0,
      elevatedButtonSchemeColor: SchemeColor.onPrimaryContainer,
      elevatedButtonSecondarySchemeColor: SchemeColor.primaryContainer,
      inputDecoratorSchemeColor: SchemeColor.primary,
      inputDecoratorIsFilled: true,
      inputDecoratorBackgroundAlpha: 48,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      inputDecoratorRadius: 8.0,
      inputDecoratorUnfocusedHasBorder: false,
      inputDecoratorPrefixIconSchemeColor: SchemeColor.primary,
      alignedDropdown: true,
      drawerElevation: 1.0,
      drawerWidth: 290.0,
      bottomNavigationBarSelectedLabelSchemeColor: SchemeColor.secondary,
      bottomNavigationBarMutedUnselectedLabel: false,
      bottomNavigationBarSelectedIconSchemeColor: SchemeColor.secondary,
      bottomNavigationBarMutedUnselectedIcon: false,
      searchBarElevation: 1.0,
      searchViewElevation: 1.0,
      searchUseGlobalShape: true,
      navigationBarSelectedLabelSchemeColor: SchemeColor.onSecondaryContainer,
      navigationBarSelectedIconSchemeColor: SchemeColor.onSecondaryContainer,
      navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
      navigationBarElevation: 1.0,
      navigationBarHeight: 72.0,
      navigationRailSelectedLabelSchemeColor: SchemeColor.onSecondaryContainer,
      navigationRailSelectedIconSchemeColor: SchemeColor.onSecondaryContainer,
      navigationRailUseIndicator: true,
      navigationRailIndicatorSchemeColor: SchemeColor.secondaryContainer,
      navigationRailIndicatorOpacity: 1.00,
    ),
    // Direct ThemeData properties.
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
  );
}
