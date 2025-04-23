// lib/src/colors/oklch_color.dart
import 'dart:math' as math;
import 'package:flutter/material.dart';

/// Uma classe que representa uma cor no espaço de cores OKLCH.
///
/// OKLCH é um espaço de cores perceptualmente uniforme que é mais intuitivo para
/// designers e desenvolvedores trabalharem.
class OklchColor {
  /// Lightness (0 a 1)
  final double l;

  /// Chroma (0 a ~0.4)
  final double c;

  /// Hue (0 a 360)
  final double h;

  /// Alfa (0 a 1)
  final double alpha;

  const OklchColor(this.l, this.c, this.h, [this.alpha = 1.0])
    : assert(l >= 0 && l <= 1),
      assert(c >= 0),
      assert(h >= 0 && h <= 360),
      assert(alpha >= 0 && alpha <= 1);

  /// Cria uma instância de [OklchColor] a partir de uma cor Flutter.
  factory OklchColor.fromColor(Color color) {
    final lab = _rgbToOklab(
      color.red / 255,
      color.green / 255,
      color.blue / 255,
    );
    final l = lab[0];
    final a = lab[1];
    final b = lab[2];

    final c = math.sqrt(a * a + b * b);
    final h = (math.atan2(b, a) * 180 / math.pi + 360) % 360;

    return OklchColor(l, c, h, color.alpha / 255);
  }

  /// Converte esta cor OKLCH para uma cor Flutter.
  Color toColor() {
    final a = c * math.cos(h * math.pi / 180);
    final b = c * math.sin(h * math.pi / 180);

    final lab = [l, a, b];
    final rgb = _oklabToRgb(lab[0], lab[1], lab[2]);

    return Color.fromRGBO(
      (rgb[0] * 255).round().clamp(0, 255),
      (rgb[1] * 255).round().clamp(0, 255),
      (rgb[2] * 255).round().clamp(0, 255),
      alpha,
    );
  }

  /// Cria uma nova instância de [OklchColor] com chroma modificado.
  OklchColor withChroma(double c) => OklchColor(l, c, h, alpha);

  /// Cria uma nova instância de [OklchColor] com luminosidade modificada.
  OklchColor withLightness(double l) => OklchColor(l, c, h, alpha);

  /// Cria uma nova instância de [OklchColor] com matiz modificado.
  OklchColor withHue(double h) => OklchColor(l, c, h, alpha);

  /// Cria uma nova instância de [OklchColor] com alfa modificado.
  OklchColor withAlpha(double alpha) => OklchColor(l, c, h, alpha);

  /// Funções auxiliares para converter entre RGB e OKLab
  static List<double> _rgbToOklab(double r, double g, double b) {
    // Conversão de RGB para linear sRGB
    r = _srgbToLinear(r);
    g = _srgbToLinear(g);
    b = _srgbToLinear(b);

    // Conversão para XYZ-D65
    final x = 0.4122214708 * r + 0.5363325363 * g + 0.0514459929 * b;
    final y = 0.2119034982 * r + 0.6806995451 * g + 0.1073969566 * b;
    final z = 0.0883024619 * r + 0.2817188376 * g + 0.6299787005 * b;

    // Conversão para OKLab
    final l = 0.2104542553 * x + 0.7936177850 * y - 0.0040720468 * z;
    final m = 1.9779984951 * x - 2.4285922050 * y + 0.4505937099 * z;
    final s = 0.0259040371 * x + 0.7827717662 * y - 0.8086757660 * z;

    final lp = math.pow(l, 1 / 3).toDouble();
    final mp = math.pow(m, 1 / 3).toDouble();
    final sp = math.pow(s, 1 / 3).toDouble();

    return [
      0.9999999984 * lp + 0.3963377774 * mp + 0.2158037573 * sp,
      1.0000000088 * lp - 0.1055613458 * mp - 0.0638541728 * sp,
      1.0000000546 * lp - 0.0894841775 * mp - 1.2914855480 * sp,
    ];
  }

  static List<double> _oklabToRgb(double l, double a, double b) {
    // Conversão de OKLab para XYZ-D65
    final lp = l + 0.3963377774 * a + 0.2158037573 * b;
    final mp = l - 0.1055613458 * a - 0.0638541728 * b;
    final sp = l - 0.0894841775 * a - 1.2914855480 * b;

    final l1 = lp * lp * lp;
    final m1 = mp * mp * mp;
    final s1 = sp * sp * sp;

    final x = 1.2270138511 * l1 - 0.5577999807 * m1 + 0.2812561490 * s1;
    final y = -0.0405801784 * l1 + 1.1122568696 * m1 - 0.0716766787 * s1;
    final z = -0.0763812845 * l1 - 0.4214819784 * m1 + 1.5861632204 * s1;

    // Conversão para sRGB linear
    final r = 3.2404542 * x - 1.5371385 * y - 0.4985314 * z;
    final g = -0.9692660 * x + 1.8760108 * y + 0.0415560 * z;
    final b1 = 0.0556434 * x - 0.2040259 * y + 1.0572252 * z;

    // Conversão para sRGB
    return [_linearToSrgb(r), _linearToSrgb(g), _linearToSrgb(b1)];
  }

  static double _srgbToLinear(double x) {
    return x <= 0.04045
        ? x / 12.92
        : math.pow((x + 0.055) / 1.055, 2.4).toDouble();
  }

  static double _linearToSrgb(double x) {
    if (x <= 0) return 0;
    if (x >= 1) return 1;
    return x <= 0.0031308
        ? 12.92 * x
        : 1.055 * math.pow(x, 1 / 2.4).toDouble() - 0.055;
  }

  @override
  String toString() => 'OklchColor(l: $l, c: $c, h: $h, alpha: $alpha)';
}
