import 'package:akthar/constants/app_theme.dart';
import 'package:akthar/helpers/navigation_helper.dart';
import 'package:akthar/view/provider/auth_provider.dart';
import 'package:akthar/view/screens/home_screen.dart';
import 'package:akthar/widgets/custom_text_field.dart';
import 'package:akthar/widgets/heading_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final authPro = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const HeadingText(text: "Update Profile"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeadingText(
              text: "First Name",
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 4.h,
            ),
            CustomTextField(
                controller: authPro.firstNameController, hint: "First name"),
            SizedBox(
              height: 20.h,
            ),
            const HeadingText(
              text: "Last Name",
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 4.h,
            ),
            CustomTextField(
                controller: authPro.firstNameController, hint: "Last name"),
            SizedBox(
              height: 20.h,
            ),
            const HeadingText(
              text: "E-mail",
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 4.h,
            ),
            CustomTextField(
                controller: authPro.firstNameController, hint: "email"),
            SizedBox(
              height: 20.h,
            ),
            const HeadingText(
              text: "Phone number",
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 8.h,
            ),
            const HeadingText(text: "9876543210"),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const HeadingText(
                  text: "Completing Your Profile",
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: 3.h,
                ),
                const HeadingText(
                    fontSize: 8,
                    maxLines: 5,
                    text:
                        "This action will reflect in your activities and payments after saving. we ask for email details for recieving monthly activity and notifications."),
                SizedBox(
                  height: 12.h,
                ),
                 SizedBox(
                   height: 40.h,
                   width: double.infinity,
                   child: ElevatedButton(
                     
                       style: ElevatedButton.styleFrom(
                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                           backgroundColor: primaryColorAR,
                           foregroundColor: Colors.white),
                       onPressed: () {
                      push(context,const HomeScreen());
                       },
                       child: const HeadingText(
                         text: "Save Changes",
                         color: Colors.white,
                       )),
                 ),
              ],
            ),
            SizedBox(
              height: 30.h,
            )
          ],
        ),
      ),
    );
  }
}
