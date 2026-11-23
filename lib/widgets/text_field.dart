import 'package:flutter/material.dart';
import 'package:simple_life/colors/app_colors.dart';



Widget field(
    String name,
    String label, {
      TextInputType? keyboardType,
      bool obscureText = false,
      int maxLines = 1,
      int minLines = 1,
      String? Function(String?)? validator,
      Widget? suffixIcon,
      ValueChanged<String>? onBlur,
      TextEditingController? controller
    }) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 14),
    child: Focus(
      onFocusChange: (hasFocus) {
        if (!hasFocus) {
          onBlur?.call(controller?.text ?? '');
        }
      },
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        maxLines: maxLines,
        minLines: minLines,
        validator: validator ?? _required,
        decoration: _decoration(label).copyWith(suffixIcon: suffixIcon),
      ),
    ),
  );
}


InputDecoration  _decoration(String label) {
  return InputDecoration(
    labelText: label,
    filled: true,
    fillColor: Colors.white,
    contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFFD9DCE1)),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFFD9DCE1)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColors.primary, width: 1.4),
    ),
  );
}


String? _required(String? value) {
  if (value == null || value.trim().isEmpty) return 'This field is required';
  return null;
}