import 'package:akthar/constants/app_icons.dart';
import 'package:akthar/view/provider/home_provider.dart';
import 'package:akthar/widgets/custom_svg.dart';
import 'package:akthar/widgets/heading_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homePro = Provider.of<HomeProvider>(context);
    return Scaffold(
      body: homePro.tabs[homePro.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) {
            homePro.chnageIndex(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgIcon(
                path: homeIcon,
                color: homePro.currentIndex == 0 ? Colors.amber : Colors.black,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgIcon(path: activityIcon,
               color: homePro.currentIndex == 1 ? Colors.amber : Colors.black,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgIcon(path: comminityIcon,
               color: homePro.currentIndex == 2 ? Colors.amber : Colors.black,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgIcon(path: personIcon,
               color: homePro.currentIndex == 3 ? Colors.amber : Colors.black,
              ),
              label: '',
            ),
          ]),
    );
  }
}
