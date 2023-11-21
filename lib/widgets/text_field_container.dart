import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldContainer extends StatelessWidget {
  TextFieldContainer({
    super.key,
    required this.controller,
    required this.width,
    required this.text,
    this.withTextHeader = true,
    this.height,
    this.formKey,
    this.suffixIcon,
    this.hintText,
    this.prefixText,
    this.isReadOnly = false,
    this.fillColor = Colors.white,
    String? Function(String? value)? onValidate,
    void Function(String? value)? onChanged,
    List<TextInputFormatter>? inputFormatters,
  }) {
    if (onChanged != null) {
      this.onChanged = onChanged;
    }
    if (onValidate != null) {
      this.onValidate = onValidate;
    }
    if (inputFormatters != null) {
      this.inputFormatters = inputFormatters;
    }
  }

  final GlobalKey<FormState>? formKey;
  final TextEditingController controller;
  final double width;
  final double? height;
  final String text;
  void Function(String? value) onChanged = (value) {};
  String? Function(String? value) onValidate = (value) => null;
  List<TextInputFormatter> inputFormatters = [];
  final Widget? suffixIcon;
  final String? hintText;
  final String? prefixText;
  final bool isReadOnly;
  final bool withTextHeader;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / 1440;
    double ffem = fem * 0.97;
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (withTextHeader)
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: ffem * 16,
              ),
            ),
          if (withTextHeader) SizedBox(height: 8 * fem),
          SizedBox(
            width: width,
            child: TextFormField(
              controller: controller,
              inputFormatters: inputFormatters,
              readOnly: isReadOnly,
              style: TextStyle(
                color: const Color(0xFF0B3558),
                fontSize: 16 * ffem,
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: fillColor,
                prefixText: prefixText,
                prefixStyle: TextStyle(
                  color: const Color(0xFF0B3558),
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w400,
                ),
                hintText: hintText,
                hintStyle: TextStyle(
                  color: fillColor != Colors.white
                      ? Colors.white
                      : Theme.of(context).hintColor,
                  fontSize: ffem * 16,
                ),
                suffixIcon: suffixIcon,
                contentPadding: EdgeInsets.only(
                  left: 16 * fem,
                  right: 16 * fem,
                  // bottom: 8 * fem,
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFFD4E0ED)),
                  borderRadius: BorderRadius.circular(ffem * 24),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFFD4E0ED)),
                  borderRadius: BorderRadius.circular(ffem * 24),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  borderRadius: BorderRadius.circular(ffem * 24),
                ),
              ),
              validator: onValidate,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
