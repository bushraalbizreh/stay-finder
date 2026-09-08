import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool filled;
  final Color fillColor;
  final IconData? prefixIcon;
  final IconButton? suffixIcon;
  final String hintText;
  final TextStyle? hintStyle;
  final String? Function(String?)? validator;
  final void Function(String?)? onFieldSubmitted;
  final bool? obscureText;
  final void Function()? onSuffixIconPressed;
  final void Function()? onTap;
  final void Function(String)? onChange;
  final bool enabled;

  const CustomTextField({
    super.key,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.filled = true,
    this.fillColor = Colors.white,
    this.prefixIcon,
    this.suffixIcon,
    required this.hintText,
    this.hintStyle,
    this.validator,
    this.onFieldSubmitted,
    this.obscureText,
    this.onSuffixIconPressed,
    this.onTap,
    this.onChange,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        
        filled: filled,
        fillColor: fillColor,
        hintStyle: TextStyle(color: Color(0xFFC8C6C6)),
        prefixIcon: prefixIcon != null
            ? Icon(prefixIcon, color: Color(0xFF5F5E5E))
            : null,
            
        suffixIcon: suffixIcon,
      
        
          
        hintText: hintText,
      
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFDBC1B9)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFD97757)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFDBC1B9)),
        ),
      ),
      onChanged: onChange,
      onTap: onTap,
      validator: validator,
      onFieldSubmitted: onFieldSubmitted,
      obscureText: obscureText ?? false,
      enabled: enabled,
    );
  }
}
