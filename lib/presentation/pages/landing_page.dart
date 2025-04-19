import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/common/navigation/sections_navigator.dart';

import '../../common/portfolio_constants.dart';
import '../../common/style/portfolio_colors.dart';
import '../about/sections/about_section.dart';
import '../home/sections/home_section.dart';
import '../sections/contact_me_section.dart';
import '../sections/footer_section.dart';
import '../sections/navbar_section.dart';
import '../sections/projects_section.dart';
import '../widgets/mobile_navigation_buttons.dart';
import '../widgets/name_widget.dart';

// test
class LandingPage extends StatefulWidget {
  const LandingPage({
    super.key,
  });

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    return Scaffold(
      backgroundColor: PortfolioColors.primary,
      appBar: (PortfolioConstants.isDesktop())
          ? PreferredSize(
              preferredSize: Size(double.maxFinite, 100.h),
              child: const NavbarSection(),
            )
          : AppBar(
              title: const NameWidget(),
              surfaceTintColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              bottom: const PreferredSize(
                preferredSize: Size(50, 10),
                child: Divider(
                  color: PortfolioColors.secondary,
                  thickness: 3,
                ),
              ),
            ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          // constraints: const BoxConstraints(maxWidth: 1600),
          padding: (PortfolioConstants.isDesktop())
              ? const EdgeInsets.symmetric(horizontal: 50.0)
              : const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(key: SectionsNavigator.homeNavigatorKey),
                const HomeSection(),
                SizedBox(height: 40.h),
                AboutSection(key: SectionsNavigator.aboutNavigatorKey),
                SizedBox(height: 40.h),
                ProjectsSection(key: SectionsNavigator.projectsNavigatorKey),
                SizedBox(height: 40.h),
                ContactMeSection(
                  key: SectionsNavigator.contactNavigatorKey,
                ),
                // SendEmailSection(
                // SectionsNavigator.homeNavigatorKey
                // ),
                SizedBox(height: 40.h),
                const FooterSection(),
                SizedBox(height: 40.h),
              ],
            ),
          ),
        ),
      ),
      endDrawer: (!(PortfolioConstants.isDesktop()))
          ? const Drawer(
              shape: BeveledRectangleBorder(),
              backgroundColor: PortfolioColors.primary,
              child: MobileNavigationButtons(),
            )
          : null,
    );
  }

  Center newMethod(ScrollController scrollController) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        // constraints: const BoxConstraints(maxWidth: 1600),
        padding: (PortfolioConstants.isDesktop())
            ? const EdgeInsets.symmetric(horizontal: 50.0)
            : const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(key: SectionsNavigator.homeNavigatorKey),
              const HomeSection(),
              SizedBox(height: 40.h),
              AboutSection(key: SectionsNavigator.aboutNavigatorKey),
              SizedBox(height: 40.h),
              ProjectsSection(key: SectionsNavigator.projectsNavigatorKey),
              SizedBox(height: 40.h),
              ContactMeSection(key: SectionsNavigator.contactNavigatorKey),
              // SendEmailSection(
              // SectionsNavigator.homeNavigatorKey
              // ),
              SizedBox(height: 40.h),
              const FooterSection(),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}
