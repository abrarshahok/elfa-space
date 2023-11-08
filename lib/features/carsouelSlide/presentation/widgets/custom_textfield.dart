import 'package:elfa_main_dashboard/constants/constants.dart';
import 'package:flutter/material.dart';
import '../provider/error_provider.dart';
import 'package:provider/provider.dart';
import '../../../../constants.dart';

class CutsomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String type;
  final Widget? suffixIcon;
  final String uppterType;
  final String errorText;
  final bool hidetext;

  const CutsomTextField({
    super.key,
    required this.controller,
    required this.type,
    this.suffixIcon,
    required this.uppterType,
    required this.errorText,
    required this.hidetext,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: key,
      controller: controller,
      obscureText: hidetext,
      decoration: InputDecoration(
        hintText: type,
        hintStyle: MyFonts.getPoppin(
          color: const Color(0xFF847A7A),
          fontSize: 17,
          fontWeight: FontWeight.w300,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9),
          borderSide: const BorderSide(
            color: Color(0xFFBDB2B2),
          ),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9),
          borderSide: const BorderSide(
            color: Colors.purple,
          ),
          gapPadding: 10,
        ),
        suffixIcon: suffixIcon,
      ),
      validator: (value) {
        if (value!.isEmpty &&
            !Provider.of<errorProvider>(context, listen: false)
                .errors
                .contains(errorText)) {
          Provider.of<errorProvider>(context, listen: false)
              .addError(errorText);
        }
        return null;
      },
    );
  }
}
