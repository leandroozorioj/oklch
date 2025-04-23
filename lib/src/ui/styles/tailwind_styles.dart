// lib/src/ui/styles/tailwind_styles.dart
import 'package:flutter/material.dart';
import '../../colors/palette.dart';

/// Um sistema de estilos inspirado no TailwindCSS para Flutter.
class TailwindStyles {
  // Espaçamento
  static const Map<String, double> spacing = {
    'px': 1,
    '0': 0,
    '0.5': 2,
    '1': 4,
    '1.5': 6,
    '2': 8,
    '2.5': 10,
    '3': 12,
    '3.5': 14,
    '4': 16,
    '5': 20,
    '6': 24,
    '7': 28,
    '8': 32,
    '9': 36,
    '10': 40,
    '11': 44,
    '12': 48,
    '14': 56,
    '16': 64,
    '20': 80,
    '24': 96,
    '28': 112,
    '32': 128,
    '36': 144,
    '40': 160,
    '44': 176,
    '48': 192,
    '52': 208,
    '56': 224,
    '60': 240,
    '64': 256,
    '72': 288,
    '80': 320,
    '96': 384,
  };

  // Tamanhos de fonte
  static const Map<String, TextStyle> fontSize = {
    'xs': TextStyle(fontSize: 12, height: 1.25),
    'sm': TextStyle(fontSize: 14, height: 1.25),
    'base': TextStyle(fontSize: 16, height: 1.5),
    'lg': TextStyle(fontSize: 18, height: 1.5),
    'xl': TextStyle(fontSize: 20, height: 1.5),
    '2xl': TextStyle(fontSize: 24, height: 1.5),
    '3xl': TextStyle(fontSize: 30, height: 1.25),
    '4xl': TextStyle(fontSize: 36, height: 1.25),
    '5xl': TextStyle(fontSize: 48, height: 1),
    '6xl': TextStyle(fontSize: 60, height: 1),
    '7xl': TextStyle(fontSize: 72, height: 1),
    '8xl': TextStyle(fontSize: 96, height: 1),
    '9xl': TextStyle(fontSize: 128, height: 1),
  };

  // Espessura da fonte
  static const Map<String, FontWeight> fontWeight = {
    'thin': FontWeight.w100,
    'extralight': FontWeight.w200,
    'light': FontWeight.w300,
    'normal': FontWeight.w400,
    'medium': FontWeight.w500,
    'semibold': FontWeight.w600,
    'bold': FontWeight.w700,
    'extrabold': FontWeight.w800,
    'black': FontWeight.w900,
  };

  // Border radius
  static const Map<String, BorderRadius> borderRadius = {
    'none': BorderRadius.zero,
    'sm': BorderRadius.all(Radius.circular(2)),
    'md': BorderRadius.all(Radius.circular(4)),
    'lg': BorderRadius.all(Radius.circular(8)),
    'xl': BorderRadius.all(Radius.circular(12)),
    '2xl': BorderRadius.all(Radius.circular(16)),
    '3xl': BorderRadius.all(Radius.circular(24)),
    'full': BorderRadius.all(Radius.circular(9999)),
  };

  // Sombras
  static const Map<String, List<BoxShadow>> boxShadow = {
    'sm': [
      BoxShadow(color: Color(0x1A000000), blurRadius: 2, offset: Offset(0, 1)),
    ],
    'md': [
      BoxShadow(color: Color(0x1A000000), blurRadius: 4, offset: Offset(0, 2)),
    ],
    'lg': [
      BoxShadow(color: Color(0x1A000000), blurRadius: 8, offset: Offset(0, 4)),
    ],
    'xl': [
      BoxShadow(color: Color(0x1A000000), blurRadius: 12, offset: Offset(0, 6)),
    ],
    '2xl': [
      BoxShadow(color: Color(0x1A000000), blurRadius: 25, offset: Offset(0, 8)),
    ],
    'inner': [
      BoxShadow(color: Color(0x1A000000), blurRadius: 4, offset: Offset(0, 2)),
    ],
    'none': [],
  };

  // Opacidade
  static const Map<String, double> opacity = {
    '0': 0.0,
    '5': 0.05,
    '10': 0.1,
    '20': 0.2,
    '25': 0.25,
    '30': 0.3,
    '40': 0.4,
    '50': 0.5,
    '60': 0.6,
    '70': 0.7,
    '75': 0.75,
    '80': 0.8,
    '90': 0.9,
    '95': 0.95,
    '100': 1.0,
  };

  // Estilos de borda
  static const Map<String, BorderStyle> borderStyle = {
    'none': BorderStyle.none,
    'solid': BorderStyle.solid,
  };

  // Densidade de linha
  static const Map<String, double> lineHeight = {
    'none': 1.0,
    'tight': 1.25,
    'snug': 1.375,
    'normal': 1.5,
    'relaxed': 1.625,
    'loose': 2.0,
  };

  // Largura da borda
  static const Map<String, double> borderWidth = {
    '0': 0,
    'px': 1,
    '1': 1,
    '2': 2,
    '4': 4,
    '8': 8,
  };

  // Tamanhos de tela
  static const Map<String, double> screens = {
    'sm': 640,
    'md': 768,
    'lg': 1024,
    'xl': 1280,
    '2xl': 1536,
  };

  // Escalas de largura
  static const Map<String, double> width = {
    'auto': double.infinity,
    'px': 1,
    '1/2': 0.5,
    '1/3': 0.33333,
    '2/3': 0.66667,
    '1/4': 0.25,
    '2/4': 0.5,
    '3/4': 0.75,
    '1/5': 0.2,
    '2/5': 0.4,
    '3/5': 0.6,
    '4/5': 0.8,
    '1/6': 0.16667,
    '2/6': 0.33333,
    '3/6': 0.5,
    '4/6': 0.66667,
    '5/6': 0.83333,
    'full': 1.0,
    'screen': 1.0,
  };

  // Z-index
  static const Map<String, int> zIndex = {
    'auto': 0,
    '0': 0,
    '10': 10,
    '20': 20,
    '30': 30,
    '40': 40,
    '50': 50,
  };

  // Duração de transição
  static const Map<String, Duration> transitionDuration = {
    '75': Duration(milliseconds: 75),
    '100': Duration(milliseconds: 100),
    '150': Duration(milliseconds: 150),
    '200': Duration(milliseconds: 200),
    '300': Duration(milliseconds: 300),
    '500': Duration(milliseconds: 500),
    '700': Duration(milliseconds: 700),
    '1000': Duration(milliseconds: 1000),
  };

  // Curvas de transição
  static const Map<String, Curve> transitionTimingFunction = {
    'linear': Curves.linear,
    'in': Curves.easeIn,
    'out': Curves.easeOut,
    'in-out': Curves.easeInOut,
  };

  // Métodos auxiliares para aplicação de estilos

  /// Aplica padding com base no valor do Tailwind
  static EdgeInsetsGeometry getPadding(
    String value, {
    bool all = true,
    bool horizontal = false,
    bool vertical = false,
  }) {
    final padding = spacing[value] ?? 0.0;

    if (all) return EdgeInsets.all(padding);
    if (horizontal && vertical)
      return EdgeInsets.symmetric(horizontal: padding, vertical: padding);
    if (horizontal) return EdgeInsets.symmetric(horizontal: padding);
    if (vertical) return EdgeInsets.symmetric(vertical: padding);

    return EdgeInsets.zero;
  }

  /// Aplica margin com base no valor do Tailwind
  static EdgeInsetsGeometry getMargin(
    String value, {
    bool all = true,
    bool horizontal = false,
    bool vertical = false,
  }) {
    return getPadding(
      value,
      all: all,
      horizontal: horizontal,
      vertical: vertical,
    );
  }

  /// Aplica um estilo de texto completo baseado nos valores do Tailwind
  static TextStyle getTextStyle({
    String? size,
    String? weight,
    String? height,
    Color? color,
    bool? italic,
    bool? underline,
    bool? lineThrough,
  }) {
    TextStyle style = fontSize[size ?? 'base'] ?? const TextStyle(fontSize: 16);

    if (weight != null) {
      style = style.copyWith(fontWeight: fontWeight[weight]);
    }

    if (height != null) {
      style = style.copyWith(height: lineHeight[height]);
    }

    if (color != null) {
      style = style.copyWith(color: color);
    }

    if (italic == true) {
      style = style.copyWith(fontStyle: FontStyle.italic);
    }

    if (underline == true) {
      style = style.copyWith(decoration: TextDecoration.underline);
    }

    if (lineThrough == true) {
      style = style.copyWith(decoration: TextDecoration.lineThrough);
    }

    return style;
  }

  /// Aplica uma decoração de caixa baseada nos valores do Tailwind
  static BoxDecoration getBoxDecoration({
    Color? backgroundColor,
    String? borderRadius,
    String? shadow,
    Color? borderColor,
    String? borderWidth,
    String? borderStyle,
  }) {
    BorderRadius? radius;
    List<BoxShadow>? shadows;
    Border? border;

    if (borderRadius != null) {
      radius = TailwindStyles.borderRadius[borderRadius];
    }

    if (shadow != null) {
      shadows = TailwindStyles.boxShadow[shadow];
    }

    if (borderColor != null && borderWidth != null && borderStyle != null) {
      final width = TailwindStyles.borderWidth[borderWidth] ?? 0;
      final style = TailwindStyles.borderStyle[borderStyle] ?? BorderStyle.none;

      border = Border.all(color: borderColor, width: width, style: style);
    }

    return BoxDecoration(
      color: backgroundColor,
      borderRadius: radius,
      boxShadow: shadows,
      border: border,
    );
  }
}
