import 'package:flutter/material.dart';
//import 'package:flutter_social_app_cloned/extensions/extensions.dart';

class CustomFormTextField extends StatelessWidget {
  final String? hint;
  final String? errorType;
  final bool secureText;

  const CustomFormTextField(
      {Key? key, this.hint, this.errorType, required this.secureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: secureText,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xffB3ABAB),
                width: 1,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.grey),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.blue),
              borderRadius: BorderRadius.all(Radius.circular(10)))),
      validator: (value) {
        if (value == null || value.isEmpty) return errorType;
        return null;
      },
    );
  }
}
