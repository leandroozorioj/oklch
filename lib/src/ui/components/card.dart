import 'package:flutter/material.dart';
import '../styles/tailwind_styles.dart';

/// Um card estilizado seguindo a estética do TailwindUI.
class TwCard extends StatelessWidget {
  final Widget? child;
  final String shadow;
  final String padding;
  final String radius;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? width;
  final double? height;
  final bool hover;
  final VoidCallback? onTap;

  const TwCard({
    Key? key,
    this.child,
    this.shadow = 'md',
    this.padding = '4',
    this.radius = 'lg',
    this.backgroundColor,
    this.borderColor,
    this.width,
    this.height,
    this.hover = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final decoration = TailwindStyles.getBoxDecoration(
      backgroundColor: backgroundColor ?? Colors.white,
      borderRadius: radius,
      shadow: shadow,
      borderColor: borderColor ?? Colors.transparent,
      borderWidth: borderColor != null ? '1' : '0',
      borderStyle: 'solid',
    );

    final padding = TailwindStyles.getPadding(this.padding, all: true);

    Widget card = Container(
      width: width,
      height: height,
      padding: padding,
      decoration: decoration,
      child: child,
    );

    if (hover || onTap != null) {
      card = AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: width,
        height: height,
        padding: padding,
        decoration: decoration,
        child: child,
      );

      if (onTap != null) {
        card = InkWell(
          onTap: onTap,
          borderRadius: decoration.borderRadius as BorderRadius?,
          child: card,
        );
      }
    }

    return card;
  }
}
