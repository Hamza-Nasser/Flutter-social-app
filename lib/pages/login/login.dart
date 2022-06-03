import 'package:flutter/material.dart';
import 'package:flutter_social_app/extensions/extensions.dart';
import 'package:flutter_social_app/utilities/constants.dart';
import 'package:flutter_social_app/widgets/custom_form_button.dart';
import 'package:flutter_social_app/widgets/custom_form_field.dart';
import 'package:flutter_social_app/widgets/texts.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final loginFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 16, top: 16, right: 16),
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Column(
                children: [
                  Texts(
                    Constants.appName,
                    size: 30,
                  ).fadeInList(0, false),
                  SizedBox(
                      height: screenHeight > 600 ? 20 : screenHeight * 0.1),
                  Form(
                    key: loginFormKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 10),
                        const CustomFormTextField(
                          secureText: false,
                          hint: 'Email',
                          errorType: 'Email is not correct',
                        ).fadeInList(1, false),
                        const SizedBox(height: 15),
                        const CustomFormTextField(
                          secureText: true,
                          hint: 'Password',
                          errorType: 'Password is not correct',
                        ).fadeInList(2, false),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/forgot_pass');
                                },
                                child: const Texts(
                                  'Forgot password?',
                                  size: 15,
                                  color: Colors.blue,
                                ).fadeInList(3, false))
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              child: CustomFormButton(
                                text: 'Submit',
                                formKey: loginFormKey,
                                nextRout: 'home',
                                showSnackBar: false,
                              ).fadeInList(4, false),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Texts('Create a new account?',
                                    size: 15, color: Colors.grey)
                                .fadeInList(5, false),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/register');
                                },
                                child: const Texts(
                                  'register',
                                  size: 15,
                                  color: Colors.blue,
                                )).fadeInList(5, false)
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
