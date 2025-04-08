import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constant/color_constant.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.onChanged,
    this.controller,
  });

  final String? hintText;
  final Widget? prefixIcon;
  final void Function(String)? onChanged;
  final TextEditingController? controller;

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      onChanged: widget.onChanged,
      obscureText: widget.hintText!.contains("Password") ? _obscureText : false,
      cursorColor: ColorConstant.greyText,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.hintText!.contains("Password")
            ? IconButton(
                icon: Icon(
                  _obscureText
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: ColorConstant.greyText,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: ColorConstant.border,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: ColorConstant.border,
          ),
        ),
        filled: true,
        fillColor: ColorConstant.white,
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          color: ColorConstant.greyText,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
