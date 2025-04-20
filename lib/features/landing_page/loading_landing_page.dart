import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/common/navigation/sections_navigator.dart';

import '../../common/portfolio_constants.dart';
import '../../common/style/portfolio_colors.dart';
import '../about/presentations/sections/loading_about_section.dart';
import '../home/sections/loading_home_section.dart';
import '../contact_me/presentation/contact_me_section.dart';
import '../footer/footer_section.dart';
import '../navbar/navbar_section.dart';
import '../projects/presentation/projects_section.dart';
import '../navbar/widgets/mobile_navigation_buttons.dart';
import '../navbar/widgets/name_widget.dart';

class LoadingWebView extends StatefulWidget {
  const LoadingWebView({
    super.key,
  });

  @override
  State<LoadingWebView> createState() => _LoadingWebViewState();
}

class _LoadingWebViewState extends State<LoadingWebView> {
  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    return Scaffold(
      backgroundColor: PortfolioColors.primary,
      appBar: appBar(),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          padding: (PortfolioConstants.isDesktop())
              ? const EdgeInsets.symmetric(horizontal: 50.0)
              : const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(key: SectionsNavigator.homeNavigatorKey),
                const LoadingHomeSection(),
                SizedBox(height: 40.h),
                LoadingAboutSection(key: SectionsNavigator.aboutNavigatorKey),
                SizedBox(height: 40.h),
                ProjectsSection(key: SectionsNavigator.projectsNavigatorKey),
                SizedBox(height: 40.h),
                ContactMeSection(key: SectionsNavigator.contactNavigatorKey),
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

  PreferredSizeWidget appBar() {
    return (PortfolioConstants.isDesktop())
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
          );
  }
}
