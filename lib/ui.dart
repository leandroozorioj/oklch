import 'package:flutter/material.dart';
import '../src/colors/palette.dart';
import '../src/ui/styles/tailwind_styles.dart';

/// Um tema para Flutter baseado na estética do TailwindUI.
class TailwindTheme {
  /// Cria um ThemeData do Flutter baseado na estética do TailwindUI.
  static ThemeData themeData({bool useMaterial3 = true, bool isDark = false}) {
    final primaryColor = OklchPalette.blue[600]!;
    final secondaryColor = OklchPalette.indigo[600]!;

    final colorScheme =
        isDark
            ? ColorScheme.dark(
              primary: primaryColor,
              secondary: secondaryColor,
              surface: OklchPalette.gray[900]!,
              background: OklchPalette.gray[950]!,
              error: OklchPalette.red[500]!,
            )
            : ColorScheme.light(
              primary: primaryColor,
              secondary: secondaryColor,
              surface: Colors.white,
              background: OklchPalette.gray[50]!,
              error: OklchPalette.red[500]!,
            );

    return ThemeData(
      useMaterial3: useMaterial3,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colorScheme.background,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.onSurface,
        elevation: 0,
      ),
      cardTheme: CardTheme(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: TailwindStyles.borderRadius['lg']!,
        ),
        color: colorScheme.surface,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: TailwindStyles.borderRadius['md']!,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: TailwindStyles.spacing['4']!,
            vertical: TailwindStyles.spacing['2']!,
          ),
          textStyle: TailwindStyles.getTextStyle(
            size: 'base',
            weight: 'medium',
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colorScheme.primary,
          side: BorderSide(color: colorScheme.primary),
          shape: RoundedRectangleBorder(
            borderRadius: TailwindStyles.borderRadius['md']!,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: TailwindStyles.spacing['4']!,
            vertical: TailwindStyles.spacing['2']!,
          ),
          textStyle: TailwindStyles.getTextStyle(
            size: 'base',
            weight: 'medium',
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: TailwindStyles.borderRadius['md']!,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: TailwindStyles.spacing['4']!,
            vertical: TailwindStyles.spacing['2']!,
          ),
          textStyle: TailwindStyles.getTextStyle(
            size: 'base',
            weight: 'medium',
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: TailwindStyles.borderRadius['md']!,
          borderSide: BorderSide(color: OklchPalette.gray[300]!),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: TailwindStyles.borderRadius['md']!,
          borderSide: BorderSide(color: OklchPalette.gray[300]!),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: TailwindStyles.borderRadius['md']!,
          borderSide: BorderSide(color: colorScheme.primary),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: TailwindStyles.borderRadius['md']!,
          borderSide: BorderSide(color: colorScheme.error),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: TailwindStyles.spacing['3']!,
          vertical: TailwindStyles.spacing['2']!,
        ),
      ),
      textTheme: TextTheme(
        displayLarge: TailwindStyles.fontSize['8xl']!.copyWith(
          fontWeight: FontWeight.bold,
        ),
        displayMedium: TailwindStyles.fontSize['7xl']!.copyWith(
          fontWeight: FontWeight.bold,
        ),
        displaySmall: TailwindStyles.fontSize['6xl']!.copyWith(
          fontWeight: FontWeight.bold,
        ),
        headlineLarge: TailwindStyles.fontSize['5xl']!.copyWith(
          fontWeight: FontWeight.bold,
        ),
        headlineMedium: TailwindStyles.fontSize['4xl']!.copyWith(
          fontWeight: FontWeight.bold,
        ),
        headlineSmall: TailwindStyles.fontSize['3xl']!.copyWith(
          fontWeight: FontWeight.bold,
        ),
        titleLarge: TailwindStyles.fontSize['2xl']!.copyWith(
          fontWeight: FontWeight.bold,
        ),
        titleMedium: TailwindStyles.fontSize['xl']!.copyWith(
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TailwindStyles.fontSize['lg']!.copyWith(
          fontWeight: FontWeight.w600,
        ),
        bodyLarge: TailwindStyles.fontSize['base']!,
        bodyMedium: TailwindStyles.fontSize['sm']!,
        bodySmall: TailwindStyles.fontSize['xs']!,
        labelLarge: TailwindStyles.fontSize['base']!.copyWith(
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TailwindStyles.fontSize['sm']!.copyWith(
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TailwindStyles.fontSize['xs']!.copyWith(
          fontWeight: FontWeight.w500,
        ),
      ),
      iconTheme: IconThemeData(
        color: isDark ? OklchPalette.gray[400] : OklchPalette.gray[500],
        size: 24.0,
      ),
      dividerTheme: DividerThemeData(
        color: isDark ? OklchPalette.gray[800] : OklchPalette.gray[200],
        thickness: 1,
        space: 1,
      ),
      chipTheme: ChipThemeData(
        backgroundColor:
            isDark ? OklchPalette.gray[800] : OklchPalette.gray[100],
        disabledColor: isDark ? OklchPalette.gray[900] : OklchPalette.gray[50],
        selectedColor: colorScheme.primary.withOpacity(0.2),
        secondarySelectedColor: colorScheme.secondary.withOpacity(0.2),
        padding: EdgeInsets.symmetric(
          horizontal: TailwindStyles.spacing['2']!,
          vertical: TailwindStyles.spacing['1']!,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: TailwindStyles.borderRadius['full']!,
        ),
        labelStyle: TailwindStyles.fontSize['sm']!.copyWith(
          fontWeight: FontWeight.w500,
          color: isDark ? OklchPalette.gray[100] : OklchPalette.gray[900],
        ),
        secondaryLabelStyle: TailwindStyles.fontSize['sm']!.copyWith(
          fontWeight: FontWeight.w500,
          color: colorScheme.secondary,
        ),
        brightness: isDark ? Brightness.dark : Brightness.light,
      ),
      tabBarTheme: TabBarTheme(
        labelColor: colorScheme.primary,
        unselectedLabelColor:
            isDark ? OklchPalette.gray[400] : OklchPalette.gray[600],
        indicatorColor: colorScheme.primary,
        labelStyle: TailwindStyles.fontSize['sm']!.copyWith(
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: TailwindStyles.fontSize['sm']!.copyWith(
          fontWeight: FontWeight.w500,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorScheme.surface,
        selectedItemColor: colorScheme.primary,
        unselectedItemColor:
            isDark ? OklchPalette.gray[400] : OklchPalette.gray[600],
        selectedLabelStyle: TailwindStyles.fontSize['xs']!.copyWith(
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: TailwindStyles.fontSize['xs']!,
        type: BottomNavigationBarType.fixed,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: TailwindStyles.borderRadius['full']!,
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor:
            isDark ? OklchPalette.gray[800] : OklchPalette.gray[900],
        contentTextStyle: TailwindStyles.fontSize['sm']!.copyWith(
          color: isDark ? OklchPalette.gray[100] : Colors.white,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: TailwindStyles.borderRadius['md']!,
        ),
        behavior: SnackBarBehavior.floating,
      ),
      dialogTheme: DialogTheme(
        backgroundColor: colorScheme.surface,
        shape: RoundedRectangleBorder(
          borderRadius: TailwindStyles.borderRadius['lg']!,
        ),
        titleTextStyle: TailwindStyles.fontSize['xl']!.copyWith(
          fontWeight: FontWeight.bold,
          color: isDark ? OklchPalette.gray[100] : OklchPalette.gray[900],
        ),
        contentTextStyle: TailwindStyles.fontSize['base']!.copyWith(
          color: isDark ? OklchPalette.gray[300] : OklchPalette.gray[700],
        ),
      ),
      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: isDark ? OklchPalette.gray[800] : OklchPalette.gray[900],
          borderRadius: TailwindStyles.borderRadius['md']!,
        ),
        textStyle: TailwindStyles.fontSize['xs']!.copyWith(
          color: isDark ? OklchPalette.gray[100] : Colors.white,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: TailwindStyles.spacing['3']!,
          vertical: TailwindStyles.spacing['2']!,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return isDark ? OklchPalette.gray[700] : OklchPalette.gray[100];
        }),
        checkColor: MaterialStateProperty.all(
          isDark ? OklchPalette.gray[100] : Colors.white,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: TailwindStyles.borderRadius['sm']!,
        ),
        side: BorderSide(
          color:
              isDark
                  ? (OklchPalette.gray[600] ?? Colors.grey)
                  : (OklchPalette.gray[400] ?? Colors.grey),
          width: 1.5,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return isDark ? OklchPalette.gray[700] : OklchPalette.gray[400];
        }),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return isDark ? OklchPalette.gray[400] : Colors.white;
        }),
        trackColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary.withOpacity(0.5);
          }
          return isDark ? OklchPalette.gray[700] : OklchPalette.gray[300];
        }),
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: colorScheme.primary,
        inactiveTrackColor:
            isDark ? OklchPalette.gray[700] : OklchPalette.gray[300],
        thumbColor: colorScheme.primary,
        overlayColor: colorScheme.primary.withOpacity(0.2),
        valueIndicatorColor: colorScheme.primary,
        valueIndicatorTextStyle: TailwindStyles.fontSize['xs']!.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: colorScheme.primary,
        linearTrackColor:
            isDark ? OklchPalette.gray[700] : OklchPalette.gray[200],
        circularTrackColor:
            isDark ? OklchPalette.gray[700] : OklchPalette.gray[200],
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: colorScheme.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(TailwindStyles.spacing['4']!),
          ),
        ),
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.linux: FadeUpwardsPageTransitionsBuilder(),
        },
      ),
    );
  }

  /// Cria um tema escuro baseado na estética do TailwindUI.
  static ThemeData darkTheme({bool useMaterial3 = true}) {
    return themeData(useMaterial3: useMaterial3, isDark: true);
  }

  /// Cria um tema claro baseado na estética do TailwindUI.
  static ThemeData lightTheme({bool useMaterial3 = true}) {
    return themeData(useMaterial3: useMaterial3, isDark: false);
  }
}
