import 'package:flutter/material.dart';

class SectionsNavigator {
  // home,about projects contact
  static final homeNavigatorKey = GlobalKey<NavigatorState>();
  static final aboutNavigatorKey = GlobalKey<NavigatorState>();
  static final projectsNavigatorKey = GlobalKey<NavigatorState>();
  static final contactNavigatorKey = GlobalKey<NavigatorState>();

  static final List<
          ({String label, GlobalKey<NavigatorState> navKey, IconData iconData})>
      actionLabels = [
    (
      label: 'Home',
      navKey: SectionsNavigator.homeNavigatorKey,
      iconData: Icons.home_outlined
    ),
    (
      label: 'About',
      navKey: SectionsNavigator.aboutNavigatorKey,
      iconData: Icons.info_outline_rounded
    ),
    (
      label: 'Projects',
      navKey: SectionsNavigator.projectsNavigatorKey,
      iconData: Icons.work_outlined
    ),
    (
      label: 'Contact',
      navKey: SectionsNavigator.contactNavigatorKey,
      iconData: Icons.contact_page
    )
  ];
  static navigateTo(GlobalKey<NavigatorState> key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
