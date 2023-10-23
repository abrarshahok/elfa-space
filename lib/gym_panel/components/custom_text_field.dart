
import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final Function(String)? onFieldSubmitted;
  final Function(String?)? onSaved;
  final bool obscureText;
  final FocusNode? focusNode;
  final int? maxLength;
  final double? width;

  const CustomTextField({
    required this.hintText,
    this.keyboardType,
    this.textInputAction,
    this.onFieldSubmitted,
    this.width,
    this.validator,
    this.onSaved,
    this.focusNode,
    this.controller,
    this.maxLength,
    this.obscureText = false,
  });

  InputBorder getBorder({required Color color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 42,
      decoration: ShapeDecoration(
        color: const Color(0x269916AE),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: TextFormField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: MyFonts.getPoppin(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.w300,
          ),
          enabledBorder: getBorder(
            color: Colors.white,
          ),
          focusedBorder: getBorder(
            color: Colors.white,
          ),
          errorBorder: getBorder(
            color: Colors.red,
          ),
          focusedErrorBorder: getBorder(
            color: Colors.red,
          ),
        ),
        maxLength: maxLength,
        focusNode: focusNode,
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        onFieldSubmitted: onFieldSubmitted,
        controller: controller,
        validator: validator,
        onSaved: onSaved,
      ),
    );
  }
}
