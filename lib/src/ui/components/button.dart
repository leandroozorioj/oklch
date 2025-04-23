import 'package:flutter/material.dart';
import '../styles/tailwind_styles.dart';
import '../../colors/palette.dart';

/// Um botão estilizado seguindo a estética do TailwindUI.
class TwButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final String variant;
  final String size;
  final bool rounded;
  final bool fullWidth;
  final IconData? icon;
  final bool iconRight;

  const TwButton({
    Key? key,
    required this.label,
    this.onPressed,
    this.variant = 'primary',
    this.size = 'md',
    this.rounded = false,
    this.fullWidth = false,
    this.icon,
    this.iconRight = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Definição de estilos por variante
    final Map<String, Map<String, dynamic>> variants = {
      'primary': {
        'backgroundColor': OklchPalette.blue[600],
        'textColor': Colors.white,
        'hoverColor': OklchPalette.blue[700],
        'borderColor': Colors.transparent,
      },
      'secondary': {
        'backgroundColor': OklchPalette.gray[200],
        'textColor': OklchPalette.gray[800],
        'hoverColor': OklchPalette.gray[300],
        'borderColor': Colors.transparent,
      },
      'outline': {
        'backgroundColor': Colors.transparent,
        'textColor': OklchPalette.blue[600],
        'hoverColor': OklchPalette.blue[50],
        'borderColor': OklchPalette.blue[600],
      },
      'ghost': {
        'backgroundColor': Colors.transparent,
        'textColor': OklchPalette.gray[700],
        'hoverColor': OklchPalette.gray[100],
        'borderColor': Colors.transparent,
      },
      'danger': {
        'backgroundColor': OklchPalette.red[600],
        'textColor': Colors.white,
        'hoverColor': OklchPalette.red[700],
        'borderColor': Colors.transparent,
      },
      'success': {
        'backgroundColor': OklchPalette.green[600],
        'textColor': Colors.white,
        'hoverColor': OklchPalette.green[700],
        'borderColor': Colors.transparent,
      },
    };

    // Definição de tamanhos
    final Map<String, Map<String, dynamic>> sizes = {
      'xs': {
        'paddingH': '2',
        'paddingV': '1',
        'fontSize': 'xs',
        'iconSize': 14.0,
      },
      'sm': {
        'paddingH': '3',
        'paddingV': '1.5',
        'fontSize': 'sm',
        'iconSize': 16.0,
      },
      'md': {
        'paddingH': '4',
        'paddingV': '2',
        'fontSize': 'base',
        'iconSize': 18.0,
      },
      'lg': {
        'paddingH': '5',
        'paddingV': '2.5',
        'fontSize': 'lg',
        'iconSize': 20.0,
      },
      'xl': {
        'paddingH': '6',
        'paddingV': '3',
        'fontSize': 'xl',
        'iconSize': 22.0,
      },
    };

    final currentVariant = variants[variant] ?? variants['primary']!;
    final currentSize = sizes[size] ?? sizes['md']!;

    // Calcula o padding com base no tamanho
    final padding = EdgeInsets.symmetric(
      horizontal: TailwindStyles.spacing[currentSize['paddingH']] ?? 16,
      vertical: TailwindStyles.spacing[currentSize['paddingV']] ?? 8,
    );

    // Estilo do texto
    final textStyle = TailwindStyles.getTextStyle(
      size: currentSize['fontSize'],
      weight: 'medium',
      color: currentVariant['textColor'],
    );

    // Decoração do botão
    final decoration = TailwindStyles.getBoxDecoration(
      backgroundColor: currentVariant['backgroundColor'],
      borderRadius: rounded ? 'full' : 'md',
      borderColor: currentVariant['borderColor'],
      borderWidth: '1',
      borderStyle: 'solid',
    );

    // Cria o conteúdo do botão
    Widget content = Text(label, style: textStyle);

    // Adiciona o ícone se fornecido
    if (icon != null) {
      final iconWidget = Icon(
        icon,
        color: currentVariant['textColor'],
        size: currentSize['iconSize'],
      );

      content = Row(
        mainAxisSize: MainAxisSize.min,
        children:
            iconRight
                ? [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: content,
                  ),
                  iconWidget,
                ]
                : [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: iconWidget,
                  ),
                  content,
                ],
      );
    }

    return InkWell(
      onTap: onPressed,
      borderRadius: decoration.borderRadius as BorderRadius?,
      splashColor: currentVariant['hoverColor']?.withOpacity(0.2),
      highlightColor: currentVariant['hoverColor']?.withOpacity(0.1),
      child: Container(
        width: fullWidth ? double.infinity : null,
        padding: padding,
        decoration: decoration,
        child: Center(child: content),
      ),
    );
  }
}
