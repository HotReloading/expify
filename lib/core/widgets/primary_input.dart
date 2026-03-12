import 'package:expify/core/theme/colors.dart';
import 'package:flutter/material.dart';

class PrimaryInput extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hint;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  const PrimaryInput({
    super.key,
    this.controller,
    this.label,
    this.hint,
    this.obscureText,
    this.keyboardType,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$label'),
        SizedBox(height: 12),
        TextFormField(
          controller: controller,
          cursorColor: Appcolors.secondaryColor,
          decoration: InputDecoration(
            fillColor: Appcolors.white,
            filled: true,
            hintText: hint,
            hintStyle: TextStyle(color: Appcolors.darkGrey),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Appcolors.errorColor, width: 2),
              borderRadius: BorderRadius.circular(16),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Appcolors.primaryColor, width: 2),
              borderRadius: BorderRadius.circular(16),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Appcolors.lightGrey, width: 2),
              borderRadius: BorderRadius.circular(16),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Appcolors.darkGrey, width: 2),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          obscureText: obscureText ?? false,
          keyboardType: keyboardType,
          validator: validator,
        ),
      ],
    );
  }
}
