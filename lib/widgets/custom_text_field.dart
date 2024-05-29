import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      
        decoration: InputDecoration(
            filled: true,
            hintText: hintText,
            hintStyle: AppStyles.styleReqular16.copyWith(
              color: const Color(0xffAAAAAA)
            ),
            fillColor: const Color(0xfffafafa),
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder()));
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xfffafafa),
      ),
    );
  }
}
