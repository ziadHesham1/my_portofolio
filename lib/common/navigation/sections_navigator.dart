import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

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
      label: 'home'.tr(),
      navKey: SectionsNavigator.homeNavigatorKey,
      iconData: Icons.home_outlined
    ),
    (
      label: 'about'.tr(),
      navKey: SectionsNavigator.aboutNavigatorKey,
      iconData: Icons.info_outline_rounded
    ),
    (
      label: 'projects'.tr(),
      navKey: SectionsNavigator.projectsNavigatorKey,
      iconData: Icons.work_outlined
    ),
    (
      label: 'contact'.tr(),
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
