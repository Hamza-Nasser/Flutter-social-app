import 'package:flutter/material.dart';
import 'dart:core';

import '../app_texts/large_text.dart';
import '../misc/colors.dart';
import '../widgets/responsive_button.dart';


class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key,

  );

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    'welcome-one.png',
    'welcome-two.png',
    'welcome-three.png'
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/'+images[index],
                  ),
                fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(left: 20, top: 100, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          LargeText(text: 'Trips', color: Colors.black,size: 30),
                          LargeText(text: 'Discover', color: Colors.red, size: 28 ),
                          LargeText(text: 'Mountain', color: Colors.black54, size: 16, isBold: false),
                          SizedBox(height: 20,),
                          LargeText(text: '2022 Flutter Master Class Tutorial for Beginners to Advance Cubit State Management API Request',
                              color: Colors.black54, size: 12, fontFamily: 'Cairo',),
                          SizedBox(height: 20,),
                          ResponsiveButton(width: 120),
                        ],

                      ),
                    ),
                    Column(

                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin:const  EdgeInsets.only(bottom: 4),
                          width: 8,

                          height: index==indexDots?25:8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index==indexDots?AppColors.mainColor:AppColors.mainColor.withOpacity(0.3),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
