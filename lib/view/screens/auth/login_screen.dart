import 'dart:ffi';

import 'package:akthar/constants/app_theme.dart';
import 'package:akthar/helpers/navigation_helper.dart';
import 'package:akthar/view/screens/auth/otp_screen.dart';
import 'package:akthar/widgets/heading_text.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 120.h,
            ),
            const HeadingText(
              text: "chargeMOD",
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
            const HeadingText(
              text: "Let’s Start",
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Colors.black,
            ),
            const HeadingText(
              text: "from login",
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: headingColorAR,
            ),
SizedBox(height: 40.h,),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey)),
                    child: CountryCodePicker(
                      boxDecoration: BoxDecoration(
                          border: Border.all(color: Colors.grey)),
                      onChanged: print,
            
                      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                      initialSelection: 'IN',
                      favorite: ['+91', 'IN'],
                      // optional. Shows only country name and flag
                      showCountryOnly: false,
                      // optional. Shows only country name and flag when popup is closed.
                      showOnlyCountryWhenClosed: false,
                      // optional. aligns the flag and the Text left
                      alignLeft: false,
                      showFlag: true,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.phone_outlined),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(color: Colors.grey))),
                    ),
                  ),
                ),
              ],
            ),
SizedBox(height: 15.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 40.h,
                width: double.infinity,
                child: ElevatedButton(
                  
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        backgroundColor: primaryColorAR,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      push(context, OtpScreen());
                    },
                    child: const HeadingText(
                      text: "Sent OTP",
                      color: Colors.white,
                    )),
              ),
            ),

            //! footer
            const Spacer(),
            const HeadingText(
              text: "By Continuing you agree to our",
              fontSize: 14,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                  text: "Terms & Condition",
                  style: TextStyle(color: primaryColorAR)),
              TextSpan(text: "  and  ", style: TextStyle(color: Colors.black)),
              TextSpan(
                  text: "Privacy Policy",
                  style: TextStyle(color: primaryColorAR))
            ])),
            SizedBox(
              height: 50.h,
            )
          ],
        ),
      ),
    );
  }
}
