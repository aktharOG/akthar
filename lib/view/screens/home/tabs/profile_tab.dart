import 'package:akthar/constants/app_theme.dart';
import 'package:akthar/view/provider/home_provider.dart';
import 'package:akthar/view/screens/home/widgets/profiel_item.dart';
import 'package:akthar/widgets/heading_text.dart';
import 'package:flutter/material.dart';
import 'package:akthar/constants/app_icons.dart';
import 'package:akthar/widgets/custom_button.dart';
import 'package:akthar/widgets/custom_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    final homePro = Provider.of<HomeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Column(
          children: [
            HeadingText(
              text: "Hello",
              fontSize: 14,
            ),
            HeadingText(
              text: "Hashim Ali",
              fontSize: 18,
            )
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30.h),
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                color: Colors.white,
                surfaceTintColor: Colors.white,
                elevation: 3,
                child: Stack(
                  children: [
                    Image.asset(cardDesign),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    HeadingText(
                                      text: "Total Energy Balance ",
                                      fontSize: 12,
                                    ),
                                    HeadingText(
                                      text: "99999 kWH",
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    HeadingText(
                                      text: "Added 100 kWH on 20/11/2022",
                                      fontSize: 10,
                                    ),
                                  ],
                                ),
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(20),
                                      height: 70.h,
                                      width: 70.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.blue),
                                    ),
                                    Positioned(
                                      bottom: 35,
                                      child: Container(
                                        height: 20,
                                        width: 85.w,
                                        color: const Color.fromARGB(
                                            255, 44, 33, 243),
                                        child: const Center(
                                          child: HeadingText(
                                            text: "Badge name",
                                            fontSize: 8,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                    child: CustomButton(
                                        icon: const Icon(
                                          Icons.add,
                                          size: 15,
                                        ),
                                        backgroundColor: Colors.green,
                                        onPressed: () {},
                                        name: "Add Energy")),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Expanded(
                                    child: CustomButton(
                                        icon: const SvgIcon(path: coinIcon),
                                        side: const BorderSide(),
                                        elevation: 0,
                                        foregroundColor: Colors.black,
                                        backgroundColor: Colors.transparent,
                                        onPressed: () {},
                                        name: "55 Points")),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  elevation: 3,
                  color: Colors.white,
                  surfaceTintColor: Colors.white,
                  child: Column(
                      children: homePro.profileItem1
                          .map((e) => ProfileItem(profileModel: e))
                          .toList()),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),

                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 10),
                   child: SizedBox(
                     height: 40.h,
                     width: double.infinity,
                     child: ElevatedButton(
                       
                         style: ElevatedButton.styleFrom(
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                             backgroundColor: primaryColorAR,
                             foregroundColor: Colors.white),
                         onPressed: () {
                         },
                         child: const HeadingText(
                           text: "Buy Machines From chargeMOD",
                           color: Colors.white,
                         )),
                   ),
                 ),

                   SizedBox(
                height: 15.h,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  elevation: 3,
                  color: Colors.white,
                  surfaceTintColor: Colors.white,
                  child: Column(
                      children: homePro.profileItem2
                          .map((e) => ProfileItem(profileModel: e))
                          .toList()),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  elevation: 3,
                  color: Colors.white,
                  surfaceTintColor: Colors.white,
                  child: Column(
                      children: homePro.profileItem3
                          .map((e) => ProfileItem(profileModel: e))
                          .toList()),
                ),
              ),
              
                   SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CustomButton(name: "Logout", icon: const SvgIcon(path: logout),onPressed: (){},),
              ),

                   SizedBox(
                height: 25.h,
              ),
                          

                          const SvgIcon(path: binary,size: 50,),
             
           
                      SizedBox(
                height: 15.h,
              ),

              const HeadingText(text: "V 1.0.0 (001)"),
              SizedBox(height: 20.h,),
              const HeadingText(text: "Copyright © 2022 BPM Power Pvt Ltd.\nAll rights reserved."),
      SizedBox(
                height: 30.h,
              ),

            
            ],
          ),
        ),
      ),
    );
  }
}
