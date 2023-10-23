import 'package:flutter/material.dart';
import '../provider/errorProvider.dart';
import 'package:provider/provider.dart';
import '../../../../constants.dart';

class CutsomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String type;
  final IconData icon;
  final String uppterType;
  final String errorText;
  final bool hidetext;

  const CutsomTextField(
      {super.key,
      required this.controller,
      required this.type,
      required this.icon,
      required this.uppterType,
      required this.errorText,
      required this.hidetext});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: hidetext,
      decoration: InputDecoration(
          hintText: type,
          labelText: type,
          labelStyle: headingTheme.copyWith(
              color: kPrimaryColor, fontSize: 16, fontWeight: FontWeight.w500),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: const BorderSide(color: Colors.grey),
              gapPadding: 10),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Color(0xffB409CE)),
              gapPadding: 10),
          suffixIcon: Icon(
            icon,
            color: kPrimaryColor,
          )),
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
