import 'package:akthar/constants/app_icons.dart';
import 'package:akthar/view/model/profile_model.dart';
import 'package:akthar/view/screens/home/tabs/activity_tab.dart';
import 'package:akthar/view/screens/home/tabs/comminty_tab.dart';
import 'package:akthar/view/screens/home/tabs/home_tab.dart';
import 'package:akthar/view/screens/home/tabs/profile_tab.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  List<Widget> tabs = const [
    HomeTab(),
    ActivityTab(),
    CommunityTab(),
    ProfileTab()
  ];

  int currentIndex = 0;

  chnageIndex(index) {
    currentIndex = index;
    notifyListeners();
  }

  List<ProfileModel> profileItem1 = [
    ProfileModel(name: "My Payments", icon: paymentIcon),
    ProfileModel(name: "My Electric Vehicles", icon: bikeIcon),
    ProfileModel(name: "My Favourite Stations", icon: favoriteIcon),
    ProfileModel(name: "Alpha Membership", icon: alphaIcon),
  ];

  List<ProfileModel> profileItem2 = [
    ProfileModel(name: "My Devices", icon: devicesIcon),
    ProfileModel(name: "My Orders", icon: ordersIcon),
  ];

  List<ProfileModel> profileItem3 = [
    ProfileModel(name: "Help", icon: helpIcon),
    ProfileModel(name: "Raise Complaint", icon: infoIcon),
    ProfileModel(name: "About Us", icon: aboutIcon),
    ProfileModel(name: "Privacy Policy", icon: privacy),
  ];
}
