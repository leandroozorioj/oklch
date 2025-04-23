import 'package:flutter/material.dart';
import '../styles/tailwind_styles.dart';
import '../../colors/palette.dart';

/// Um campo de entrada estilizado seguindo a estética do TailwindUI.
class TwInput extends StatelessWidget {
  final String? label;
  final String? placeholder;
  final String? helperText;
  final String? errorText;
  final bool obscureText;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final TextInputType keyboardType;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? onSuffixIconTap;
  final FocusNode? focusNode;
  final bool autofocus;
  final bool readOnly;
  final int? maxLines;
  final int? minLines;
  final TextInputAction? textInputAction;

  const TwInput({
    Key? key,
    this.label,
    this.placeholder,
    this.helperText,
    this.errorText,
    this.obscureText = false,
    this.controller,
    this.onChanged,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.suffixIcon,
    this.onSuffixIconTap,
    this.focusNode,
    this.autofocus = false,
    this.readOnly = false,
    this.maxLines = 1,
    this.minLines,
    this.textInputAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hasError = errorText != null && errorText!.isNotEmpty;

    // Cor da borda com base no estado
    final borderColor =
        hasError ? OklchPalette.red[500] : OklchPalette.gray[300];

    // Cor do texto do label e helper
    final labelColor =
        hasError ? OklchPalette.red[500] : OklchPalette.gray[700];

    // Estilos do label
    final labelStyle = TailwindStyles.getTextStyle(
      size: 'sm',
      weight: 'medium',
      color: labelColor,
    );

    // Estilos do helper text
    final helperStyle = TailwindStyles.getTextStyle(
      size: 'xs',
      color: labelColor,
    );

    // Estilos do input
    final inputStyle = TailwindStyles.getTextStyle(
      size: 'base',
      color: OklchPalette.gray[900],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null && label!.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Text(label!, style: labelStyle),
          ),
        Container(
          decoration: TailwindStyles.getBoxDecoration(
            borderRadius: 'md',
            borderColor: borderColor,
            borderWidth: '1',
            borderStyle: 'solid',
            backgroundColor: readOnly ? OklchPalette.gray[50] : Colors.white,
          ),
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            onChanged: onChanged,
            keyboardType: keyboardType,
            focusNode: focusNode,
            autofocus: autofocus,
            readOnly: readOnly,
            maxLines: maxLines,
            minLines: minLines,
            textInputAction: textInputAction,
            style: inputStyle,
            decoration: InputDecoration(
              hintText: placeholder,
              hintStyle: inputStyle.copyWith(color: OklchPalette.gray[400]),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 12,
              ),
              border: InputBorder.none,
              prefixIcon:
                  prefixIcon != null
                      ? Icon(prefixIcon, color: OklchPalette.gray[500])
                      : null,
              suffixIcon:
                  suffixIcon != null
                      ? IconButton(
                        icon: Icon(suffixIcon, color: OklchPalette.gray[500]),
                        onPressed: onSuffixIconTap,
                      )
                      : null,
            ),
          ),
        ),
        if ((helperText != null && helperText!.isNotEmpty) || hasError)
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              hasError ? errorText! : helperText!,
              style: helperStyle,
            ),
          ),
      ],
    );
  }
}
