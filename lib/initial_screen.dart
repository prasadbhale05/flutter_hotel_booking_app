import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking_app/screens/Bookings/BookingHistory.dart';
import 'package:hotel_booking_app/screens/Bookings/HOtelMaps.dart';
import 'package:hotel_booking_app/screens/Home/HomeScreen.dart';
import 'package:hotel_booking_app/screens/Bookings/ReviewBooking2.dart';
import 'package:hotel_booking_app/screens/Hosting/Hosting.dart';
import 'package:hotel_booking_app/screens/empty_screens/Wishlist_empty.dart';
import 'package:hotel_booking_app/screens/Bookings/Bookings.dart';
import 'package:hotel_booking_app/screens/Notifications/Notifications.dart';
import 'package:hotel_booking_app/styles.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

int initialIndex = 0;

class initialScreenPage extends StatefulWidget {
  initialScreenPage({Key? key}) : super(key: key);

  @override
  State<initialScreenPage> createState() => _initialScreenPageState();
}

class _initialScreenPageState extends State<initialScreenPage> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: initialIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: PersistentTabView(
        context,
        screens: _screens(),
        items: _navBars(),
        confineInSafeArea: true,
        backgroundColor: Colors.white, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style6,
      ),
    );
  }
}

List<Widget> _screens() {
  return [
    homeScreenPage(),
    // bookingsPage(),
    BookHistory(),
    notificationsPage(),
    hostingPage(),
  ];
}

List<PersistentBottomNavBarItem> _navBars() {
  return [
    PersistentBottomNavBarItem(
      activeColorPrimary: activeBlueColor,
      inactiveColorPrimary: inactiveGreyColor,
      title: "Home",
      icon: Icon(
        Icons.home_rounded,
        size: 25,
      ),
    ),
    PersistentBottomNavBarItem(
      activeColorPrimary: activeBlueColor,
      inactiveColorPrimary: inactiveGreyColor,
      title: "Bookings",
      icon: Icon(
        Icons.bookmark_added_rounded,
      ),
    ),
    PersistentBottomNavBarItem(
      activeColorPrimary: activeBlueColor,
      inactiveColorPrimary: inactiveGreyColor,
      title: "Notifications",
      icon: Icon(
        Icons.notifications_rounded,
      ),
    ),
    PersistentBottomNavBarItem(
      activeColorPrimary: activeBlueColor,
      inactiveColorPrimary: inactiveGreyColor,
      title: "Hosting",
      icon: Icon(
        Icons.swap_calls_rounded,
      ),
    ),
  ];
}

int changeIndex(index) {
  return index;
}
