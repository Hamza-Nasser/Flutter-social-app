import 'package:flutter/material.dart';
import 'package:flutter_social_app/widgets/texts.dart';

class CustomFormButton extends StatelessWidget {
  final String text;
  final GlobalKey<FormState> formKey;
  final String nextRout;
  final bool showSnackBar;
  const CustomFormButton(
      {Key? key,
      required this.text,
      required this.formKey,
      required this.nextRout,
      this.showSnackBar = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      onPressed: () async {
        if (showSnackBar) {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Texts('Check your mail!', color: Colors.white, size: 12,)));
        }
        if (formKey.currentState!.validate()) {
          Navigator.pushReplacementNamed(context, '/$nextRout');
        }
      },
      child: Texts(text, 
        color: Colors.white,
        size: 15,
      ),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(0),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ),
    );
  }
}
