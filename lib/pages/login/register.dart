import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:flutter_social_app/utilities/constants.dart';
import 'package:flutter_social_app/widgets/custom_form_button.dart';
import 'package:flutter_social_app/widgets/custom_form_field.dart';
import 'package:flutter_social_app/widgets/texts.dart';
import 'package:flutter_social_app/extensions/extensions.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final registerFormKey = GlobalKey<FormState>();
  final textFormController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Texts(
            Constants.appName,
            color: Colors.black,
          ).fadeInList(5, false),
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ).fadeInList(5, false),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Texts(
                    'Welcome!',
                    size: 30,
                  ).fadeInList(0, false),
                  Form(
                    key: registerFormKey,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const CustomFormTextField(
                          secureText: false,
                          hint: 'Name',
                          errorType: 'Please enter a valid data',
                        ).fadeInList(1, false),
                        const SizedBox(
                          height: 20,
                        ),
                        const CustomFormTextField(
                                secureText: false,
                                hint: 'Email',
                                errorType: 'Email is not correct')
                            .fadeInList(2, false),
                        const SizedBox(
                          height: 20,
                        ),
                        const CustomFormTextField(
                                secureText: true,
                                hint: 'Password',
                                errorType: 'Password is not correct')
                            .fadeInList(3, false),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CustomFormButton(
                                text: 'Submit',
                                formKey: registerFormKey,
                                nextRout: 'login',
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Texts(
                              'Already have an account?',
                              size: 15,
                              color: Colors.grey,
                            ).fadeInList(5, false),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Texts(
                                  'login',
                                  size: 15,
                                  color: Colors.blue,
                                )).fadeInList(4, false)
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
