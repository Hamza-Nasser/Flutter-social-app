import 'package:flutter/material.dart';
import 'package:flutter_social_app/extensions/extensions.dart';
import 'package:flutter_social_app/utilities/constants.dart';
import 'package:flutter_social_app/widgets/custom_form_button.dart';
import 'package:flutter_social_app/widgets/custom_form_field.dart';

import '../../widgets/texts.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({Key? key}) : super(key: key);

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  final forgotPassFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //remove ListView for better practice
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
      body: Center(
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
              child: Column(
                children: [
                  const Texts(
                    'Verification',
                    size: 30,
                  ).fadeInList(0, false),
                  const SizedBox(
                    height: 40,
                  ),
                  Form(
                    key: forgotPassFormKey,
                    child: Column(
                      children: [
                        const CustomFormTextField(
                          secureText: false,
                          hint: 'Email',
                          errorType: 'Email is not correct',
                        ).fadeInList(1, true),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: CustomFormButton(
                                text: 'Verify',
                                formKey: forgotPassFormKey,
                                nextRout: 'login',
                                showSnackBar: true,
                              ).fadeInList(2, true),
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Texts(
                              'Already have an account?',
                              size: 15,
                              color: Colors.grey,
                            ).fadeInList(4, false),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Texts(
                                  'login',
                                  size: 15,
                                  color: Colors.blue,
                                )).fadeInList(3, false)
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
