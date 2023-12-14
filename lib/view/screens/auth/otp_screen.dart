import 'package:akthar/constants/app_theme.dart';
import 'package:akthar/helpers/navigation_helper.dart';
import 'package:akthar/view/screens/auth/update_profile.dart';
import 'package:akthar/widgets/heading_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const HeadingText(text: "Verification"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100.h,
            ),
            const HeadingText(
              text: "We’ve send you the verification\ncode on +91 9876543210",
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),

            SizedBox(
              height: 20.h,
            ),

            Pinput(
              length: 4,
              defaultPinTheme: PinTheme(
                  constraints: const BoxConstraints(maxHeight: 50, minWidth: 50),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey))),
            ),
            SizedBox(
              height: 15.h,
            ),

            const HeadingText(
              text: "Resent OTP",
              color: primaryColorAR,
            ),
            SizedBox(
              height: 15.h,
            ),

            //! footer
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 40.h,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor: primaryColorAR,
                        foregroundColor: Colors.white),
                    onPressed: () {

                      push(context, UpdateProfile());
                    },
                    child: const HeadingText(
                      text: "CONTINUE",
                      color: Colors.white,
                    )),
              ),
            ),
            SizedBox(
              height: 50.h,
            )
          ],
        ),
      ),
    );
  }
}
