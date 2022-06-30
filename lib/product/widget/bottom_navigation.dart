import 'package:flutter/material.dart';

import '../../ui/authentication/forgot_password_view.dart';
import '../../ui/authentication/reset_email_view.dart';
import '../../ui/home/home_page_view.dart';
import '../../ui/home/walk_through_view.dart';
import '../color/color_items.dart';
import '../language/language_items.dart';

class NavigatorBar extends StatefulWidget {
  const NavigatorBar({Key? key}) : super(key: key);

  @override
  State<NavigatorBar> createState() => _NavigatorBarState();
}

class _NavigatorBarState extends State<NavigatorBar> {
  AppStringConstants? appStringConstants = AppStringConstants.instance;
  ColorItems colorItems = ColorItems();
  int _currentIndex = 0;
  final _pages = const [
    HomePageView(),
    WalkThroughView(),
    ResetEmailView(),
    ForgotPasswordView(),
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: _pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          selectedItemColor: colorItems.activeColor,
          unselectedItemColor: colorItems.bodyColor,
          showUnselectedLabels: true,
          onTap: onTabTapped,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home_outlined),
              label: appStringConstants!.navigatorBarTitle1,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.search_outlined),
              label: appStringConstants!.navigatorBarTitle2,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.payment_outlined),
              label: appStringConstants!.navigatorBarTitle3,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person_outlined),
              label: appStringConstants!.navigatorBarTitle4,
            ),
          ],
        ));
  }
}
