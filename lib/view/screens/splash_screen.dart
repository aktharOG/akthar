import 'dart:async';
import 'dart:developer';

import 'package:akthar/constants/app_icons.dart';
import 'package:akthar/constants/app_theme.dart';
import 'package:akthar/helpers/navigation_helper.dart';
import 'package:akthar/view/screens/home_screen.dart';
import 'package:akthar/view/screens/onboarding/onboarding_screens.dart';
import 'package:akthar/widgets/custom_svg.dart';
import 'package:akthar/widgets/heading_text.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {

 late  AnimationController controller;
        double value = 0;
          triggerTimer(){

          
             Timer.periodic(const Duration(milliseconds: 500), (timer) { 

              setState(() {
                if(value<=1){
                   value += value+0.01;
                }else{
                  timer.cancel();
                }
              });
             });
         

          }
   
        @override
  void initState() { 
     controller = AnimationController(vsync: this,duration: const Duration(seconds: 5))..addListener(() {
      setState(() {
        value = controller.value;
        if(controller.value==0.9966666){
          
        controller.dispose();
         pushAndRemoveUntil(context,const OnBoardingScreen());
        }
      });
     });
     controller.repeat(reverse: false);
    super.initState();
   // triggerTimer();
    
  }

  @override
  Widget build(BuildContext context) { 
    return  Scaffold(
      body: Center(child: Column(
        children: [
          const Spacer(),
          const SvgIcon(path: logoBlack,size: 45,),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: LinearProgressIndicator(
              minHeight: 8,
              color: primaryColorAR,
              value: value,
            ),
          ),
          const SizedBox(height: 10,),
          const Padding(
            padding: EdgeInsets.only(bottom: 40),
            child: HeadingText(text: "Connecting to chargeMOD"),
          )
        ],
      ),),
    );
  }
}