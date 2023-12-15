import 'package:akthar/constants/app_icons.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Image.asset(
      mapImage,
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
    ));
  }
}
