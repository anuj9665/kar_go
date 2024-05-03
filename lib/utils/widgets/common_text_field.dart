// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HeadingTextField extends StatelessWidget {
  final void Function(String?) onChanged;
  final String label;
  final String? heading;
  final String? Function(String?)? validator;
  final int? maxLines;
  final String? initialText;
  final TextInputType? keyboardType;
  final int? maxLength;
  final TextCapitalization? textCapitalization;
  final bool enabled;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? errorText;
  final List<TextInputFormatter>? inputFormatters;
  final bool removeBottomPadding;
  const HeadingTextField({
    Key? key,
    required this.onChanged,
    required this.label,
    this.heading,
    this.validator,
    this.maxLines,
    this.initialText,
    this.keyboardType,
    this.maxLength,
    this.textCapitalization,
    this.enabled = true,
    this.prefixIcon,
    this.suffixIcon,
    this.errorText,
    this.inputFormatters,
    this.removeBottomPadding = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (heading != null) ...[
          Text(
            heading ?? "",
          ),
          const SizedBox(
            height: 5,
          ),
        ],
        TextFormField(
          enabled: enabled,
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          initialValue: initialText,
          validator: validator,
          onChanged: onChanged,
          maxLines: maxLines,
          maxLength: maxLength,
          inputFormatters: inputFormatters,
          keyboardType: keyboardType,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          textInputAction: ((maxLines ?? 0) > 1)
              ? TextInputAction.newline
              : TextInputAction.next,
          decoration: InputDecoration(
            errorMaxLines: 1,
            errorText: errorText,
            alignLabelWithHint: true,
            helperText: removeBottomPadding ? null : ' ',
            counterText: removeBottomPadding ? null : ' ',
            filled: true,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 14.5, horizontal: 12),
            labelText: label,
            labelStyle:
                textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w300),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
