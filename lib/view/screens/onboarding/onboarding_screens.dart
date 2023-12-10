import 'package:akthar/constants/app_icons.dart';
import 'package:akthar/constants/app_theme.dart';
import 'package:akthar/widgets/custom_svg.dart';
import 'package:akthar/widgets/heading_text.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: 3,
          itemBuilder: (ctx, index) => Stack(
                children: [
                  const SvgIcon(
                    path: backgroundDesign,
                    size: 1000,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 40, top: 30),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: HeadingText(
                        text: "SKIP",
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(),
                        const HeadingText(
                          text: "Charge Your EV",
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                        const HeadingText(
                          text: "At Your",
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                        const HeadingText(
                          text: "Fingertips",
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: headingColorAR,
                        ),
                        const SvgIcon(
                          path: onBoarding2,
                          size: 270,
                        ),
                        const Spacer(),
                        const HeadingText(
                          maxLines: 4,
                          text:
                              "Scan Charge and Go\nEffortless Charging schemas",
                          fontSize: 15,
                        ),
                        const SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: SizedBox(
                            height: 70,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: primaryColorAR,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100))),
                                onPressed: () {},
                                child: const Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,)),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
    );
  }
}
