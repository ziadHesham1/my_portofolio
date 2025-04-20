import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ziad_dev/common/navigation/sections_navigator.dart';

import '../../common/portfolio_constants.dart';
import '../../common/style/portfolio_colors.dart';
import '../about/presentations/sections/about_section.dart';
import '../home/sections/home_section.dart';
import '../contact_me/presentation/contact_me_section.dart';
import '../footer/footer_section.dart';
import '../navbar/navbar_section.dart';
import '../projects/presentation/projects_section.dart';
import '../navbar/widgets/mobile_navigation_buttons.dart';
import '../navbar/widgets/name_widget.dart';

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
      backgroundColor: AppColors.primary,
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
                  color: AppColors.secondary,
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
              backgroundColor: AppColors.primary,
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
