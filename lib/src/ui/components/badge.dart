// lib/src/ui/components/badge.dart
import 'package:flutter/material.dart';
import '../styles/tailwind_styles.dart';
import '../../colors/palette.dart';

/// Um badge estilizado seguindo a estética do TailwindUI.
class TwBadge extends StatelessWidget {
  final String text;
  final String variant;
  final String size;
  final bool rounded;
  final IconData? icon;
  final bool iconRight;

  const TwBadge({
    Key? key,
    required this.text,
    this.variant = 'gray',
    this.size = 'md',
    this.rounded = false,
    this.icon,
    this.iconRight = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Mapeamento de variantes para cores
    final Map<String, Map<String, Color>> variants = {
      'gray': {'bg': OklchPalette.gray[100]!, 'text': OklchPalette.gray[800]!},
      'red': {'bg': OklchPalette.red[100]!, 'text': OklchPalette.red[800]!},
      'yellow': {
        'bg': OklchPalette.yellow[100]!,
        'text': OklchPalette.yellow[800]!,
      },
      'green': {
        'bg': OklchPalette.green[100]!,
        'text': OklchPalette.green[800]!,
      },
      'blue': {'bg': OklchPalette.blue[100]!, 'text': OklchPalette.blue[800]!},
      'indigo': {
        'bg': OklchPalette.indigo[100]!,
        'text': OklchPalette.indigo[800]!,
      },
      'purple': {
        'bg': OklchPalette.purple[100]!,
        'text': OklchPalette.purple[800]!,
      },
      'pink': {'bg': OklchPalette.pink[100]!, 'text': OklchPalette.pink[800]!},
    };

    // Definição de tamanhos
    final Map<String, Map<String, dynamic>> sizes = {
      'sm': {
        'paddingH': '2',
        'paddingV': '0.5',
        'fontSize': 'xs',
        'iconSize': 12.0,
      },
      'md': {
        'paddingH': '2.5',
        'paddingV': '1',
        'fontSize': 'sm',
        'iconSize': 14.0,
      },
      'lg': {
        'paddingH': '3',
        'paddingV': '1.5',
        'fontSize': 'base',
        'iconSize': 16.0,
      },
    };

    final currentVariant = variants[variant] ?? variants['gray']!;
    final currentSize = sizes[size] ?? sizes['md']!;

    // Calcula o padding com base no tamanho
    final padding = EdgeInsets.symmetric(
      horizontal: TailwindStyles.spacing[currentSize['paddingH']] ?? 10,
      vertical: TailwindStyles.spacing[currentSize['paddingV']] ?? 4,
    );

    // Estilo do texto
    final textStyle = TailwindStyles.getTextStyle(
      size: currentSize['fontSize'],
      weight: 'medium',
      color: currentVariant['text'],
    );

    // Decoração do badge
    final decoration = BoxDecoration(
      color: currentVariant['bg'],
      borderRadius: TailwindStyles.borderRadius[rounded ? 'full' : 'md'],
    );

    // Cria o conteúdo do badge
    Widget content = Text(text, style: textStyle);

    // Adiciona o ícone se fornecido
    if (icon != null) {
      final iconWidget = Icon(
        icon,
        color: currentVariant['text'],
        size: currentSize['iconSize'],
      );

      content = Row(
        mainAxisSize: MainAxisSize.min,
        children:
            iconRight
                ? [
                  Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: content,
                  ),
                  iconWidget,
                ]
                : [
                  Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: iconWidget,
                  ),
                  content,
                ],
      );
    }

    return Container(padding: padding, decoration: decoration, child: content);
  }
}
