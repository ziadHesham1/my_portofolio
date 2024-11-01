import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/portfolio_constants.dart';
import '../../common/style/portfolio_colors.dart';
import '../about/sections/loading_about_section.dart';
import '../home/sections/loading_home_section.dart';
import '../sections/contact_me_section.dart';
import '../sections/footer_section.dart';
import '../sections/navbar_section.dart';
import '../sections/projects_section.dart';
import '../widgets/mobile_navigation_buttons.dart';
import '../widgets/name_widget.dart';

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
                SizedBox(key: PortfolioConstants.navbarKeys.first),
                const LoadingHomeSection(),
                SizedBox(height: 40.h),
                LoadingAboutSection(key: PortfolioConstants.navbarKeys[1]),
                SizedBox(height: 40.h),
                ProjectsSection(key: PortfolioConstants.navbarKeys[2]),
                SizedBox(height: 40.h),
                ContactMeSection(
                  key: PortfolioConstants.navbarKeys[3],
                ),
                SizedBox(height: 40.h),
                const FooterSection(),
                SizedBox(height: 40.h),
              ],
            ),
          ),
        ),
      ),
      endDrawer: (!(PortfolioConstants.isDesktop()))
          ? Drawer(
              shape: const BeveledRectangleBorder(),
              backgroundColor: PortfolioColors.primary,
              child: MobileNavigationButtons(
                actionLabels: PortfolioConstants.actionLabels,
                onNavbarItemTap: onNavbarItemTap,
              ),
            )
          : null,
    );
  }

  PreferredSizeWidget appBar() {
    return (PortfolioConstants.isDesktop())
        ? PreferredSize(
            preferredSize: Size(double.maxFinite, 100.h),
            child: NavbarSection(
              actionLabels: PortfolioConstants.actionLabels,
              onNavbarItemTap: onNavbarItemTap,
            ),
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

  onNavbarItemTap(int index) {
    Scrollable.ensureVisible(
      PortfolioConstants.navbarKeys[index].currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
