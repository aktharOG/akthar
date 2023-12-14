import 'package:akthar/constants/app_icons.dart';
import 'package:akthar/constants/app_theme.dart';
import 'package:akthar/helpers/navigation_helper.dart';
import 'package:akthar/view/model/onboarding_model.dart';
import 'package:akthar/view/screens/auth/login_screen.dart';
import 'package:akthar/widgets/custom_svg.dart';
import 'package:akthar/widgets/heading_text.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController();

  List<OnboardingModel> onboardingItems = [
    OnboardingModel(
        overviewTitle: "Charge your EV",
        title: "At Your",
        title2: "Fingertips",
        descreption: "Scan Charge and\nGo Effortless Charging schemas",
        icon: onBoarding1),
    OnboardingModel(
        overviewTitle: "Easy EV Navigation",
        title: "Travel Route",
        title2: "For Electrics",
        descreption:
            "Grab The Best In\nClassDigital Experience Crafted For EV Drivers",
        icon: onBoarding2),
    OnboardingModel(
        overviewTitle: "interaction with Grid",
        title: "RealTime",
        title2: "Monitoring",
        descreption: "Intelligent Sensible\nDevices Ambicharge Series",
        icon: onBoarding3),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: pageController,
                itemCount: onboardingItems.length,
                itemBuilder: (ctx, index) {
                  final data = onboardingItems[index];
                  return Stack(
                    children: [
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
                            HeadingText(
                              text: data.overviewTitle,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                            HeadingText(
                              text: data.title,
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                            ),
                            HeadingText(
                              text: data.title2,
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: headingColorAR,
                            ),
                            const Spacer(),
                            if (index == 2)
                              Padding(
                                padding: const EdgeInsets.only(right: 100, top: 0),
                                child: Image.asset(
                                  onboardingItems[index].icon,
                                  height: 300,
                                  fit: BoxFit.cover,
                                ),
                              )
                            else
                              SvgIcon(
                                path: onboardingItems[index].icon,
                                size: 270,
                              ),
                            const Spacer(),
                            HeadingText(
                              maxLines: 4,
                              text: data.descreption,
                              fontSize: 15,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                         
                          ],
                        ),
                      ),
                    ],
                  );
                }),
          ),
             Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      //    if(pageController.page!=0.0)
                          Padding(
                              padding: const EdgeInsets.only(bottom: 30),
                              child: InkWell(
                                onTap: () {
                                  pageController.previousPage(
                                      duration: const Duration(milliseconds: 400),
                                      curve: Curves.easeIn);
                                },
                                child: const CircleAvatar(
                                  radius: 30,
                                  backgroundColor: primaryColorAR,
                                  child: Icon(
                                    Icons.arrow_back_ios_new,
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                          const SizedBox(
                            width: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: SmoothPageIndicator(
                              controller: pageController,
                              count: onboardingItems.length,
                              axisDirection: Axis.horizontal,
                              effect: const SlideEffect(
                                  spacing: 8.0,
                                  radius: 10.0,
                                  dotWidth: 10.0,
                                  dotHeight: 10.0,
                                  paintStyle: PaintingStyle.stroke,
                                  strokeWidth: 1.5,
                                  dotColor: Colors.grey,
                                  activeDotColor: Colors.indigo),
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Padding(
                              padding: const EdgeInsets.only(bottom: 30),
                              child: InkWell(
                                onTap: () {
                                 print(pageController.page);
                                 if(pageController.page==2.0){
                                  push(context,const LoginScreen());
                                 }
                                  pageController.nextPage(
                                      duration: const Duration(milliseconds: 400),
                                      curve: Curves.easeIn);
                                },
                                child: const CircleAvatar(
                                  radius: 30,
                                  backgroundColor: primaryColorAR,
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                        ],
                      )
        ],
      ),
    );
  }
}
