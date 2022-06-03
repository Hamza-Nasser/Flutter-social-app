// import 'package:flutter/material.dart';
// import 'package:flutter_social_app_cloned/pages/Navigation%20Activity/main_nav_page.dart';
// import 'package:flutter_social_app_cloned/utilities/constants.dart';
// import 'package:flutter_social_app_cloned/utilities/enum.dart';
// import 'package:flutter_social_app_cloned/widgets/custom_form_field.dart';
// import 'package:flutter_social_app_cloned/widgets/texts.dart';
// import 'package:flutter_social_app_cloned/extensions/extensions.dart';

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   final _formKey = GlobalKey<FormState>();
//   formMode _mode = formMode.lOGIN;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       body: SafeArea(

//         child: ListView(

//           children: [
//             AnimatedContainer(
//               duration: const Duration(milliseconds: 400),

//               margin:const EdgeInsets.only(left: 20, right: 20, top: 100),
//               child: Center(

//                 child: Column(

//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Texts(Constants.appName,
//                       size: 34,
//                     ),
//                     const SizedBox(height: 20),
//                     Form(key: _formKey,
//                       child: Column(
//                         children:  [
//                           Visibility(

//                             visible: _mode != formMode.lOGIN,
//                               child: const CustomFormTextField(hint: 'Name', errorType: 'Please Enter a valid data', secureText: false,).fadeInList(0, false)
//                               ),
//                           const SizedBox(height: 20),

//                           Visibility(
//                             visible: _mode != formMode.FORGOT,
//                               child: const CustomFormTextField(hint: 'Enter The Username', errorType: 'Username is not correct', secureText: false,).fadeInList(1, false)
//                               ),
//                           const SizedBox(height: 20),

//                           Visibility(
//                               visible: _mode != formMode.FORGOT,
//                               child: const CustomFormTextField(hint: 'Enter The pass', errorType: 'Password is not valid',secureText: true,).fadeInList(2, false)
//                             ),

//                           const SizedBox(height: 5),



//                         ],
//                       ),
//                     ),
//                     Visibility(
//                       visible: _mode == formMode.lOGIN,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           SizedBox(
//                             height: 35,
//                             child: TextButton(onPressed: (){
//                               _mode = formMode.FORGOT;
//                               setState(() {});
//                             },
//                               child: Texts('Forgot password?', size: 14,color: Colors.blue,).fadeInList(3, false),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Row(
//                       children: [

//                         Expanded(
//                           child: ElevatedButton(
//                               style: ButtonStyle(
//                                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                                     const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
//                                 ),
//                               ),

//                               onPressed: () async {
//                                 if(_formKey.currentState!.validate()){
//                                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:  Texts('Processing data')));

//                                   Navigator.pushReplacementNamed(context, '/home');

//                                 }

//                               },

//                               child: Texts('submit')
//                           ).fadeInList(4, false),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 5),
//                     Visibility(
//                       visible: _mode == formMode.lOGIN,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [

//                           Texts('Create a new account?', size: 14,color: Colors.grey,).fadeInList(5, false),
//                           SizedBox(
//                             height: 35,
//                             child: TextButton(


//                               onPressed: () {
//                                 _mode = formMode.REGISTER;
//                                 setState(() {});
//                               },
//                               child: Texts('Register', color: Colors.blue,size: 14,).fadeInList(6, false),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     Visibility(

//                       visible: _mode != formMode.lOGIN,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [

//                           Texts('Already have an account?', size: 14,color: Colors.grey,).fadeInList(5, false),
//                           SizedBox(
//                             height: 35,
//                             child: TextButton(


//                               onPressed: () {
//                                 _mode = formMode.lOGIN;
//                                 setState(() {});
//                               },
//                               child: Texts('Login', color: Colors.blue,size: 14,).fadeInList(5, false),
//                             ),
//                           )
//                         ],
//                       ),
//                     )

//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


