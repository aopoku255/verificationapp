import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:selfiemobileapp/src/screens/camera_home.dart';
import 'package:selfiemobileapp/src/screens/dashboard_home.dart';
import 'package:selfiemobileapp/src/themes/colors.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentPageIndex = 0;
  bool ondestinationSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
              ondestinationSelected = true;
            });
          },
          selectedIndex: currentPageIndex,
          indicatorColor: AppColors.primaryPinkLight,
          destinations: [
            NavigationDestination(
                icon: Icon(
                  Icons.home_outlined,
                  size: 35,
                  color: AppColors.primaryPink,
                ),
                selectedIcon: Icon(
                  Icons.home,
                  size: 35,
                  color: AppColors.primaryPink,
                ),
                label: "Home"),

            NavigationDestination(
                icon: Icon(
                  Icons.camera_alt_outlined,
                  size: 35,
                  color: AppColors.primaryPink,
                ),
                selectedIcon: Icon(
                  Icons.camera_alt,
                  size: 35,
                  color: AppColors.primaryPink,
                ),
                label: "Camera",
            ),
          ],
        ),
        body: [
          DashboardHome(),
          CameraHome()
        ][currentPageIndex]);
  }
}
