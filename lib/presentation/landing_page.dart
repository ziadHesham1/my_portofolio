import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../common/portfolio_constants.dart';
import '../common/style/portfolio_colors.dart';
import '../logic/cubit/projects_cubit.dart';
import 'sections/about_section.dart';
import 'sections/footer_section.dart';
import 'sections/home_section.dart';
import 'sections/navbar_section.dart';
import 'sections/projects_section.dart';
import 'sections/send_email_section.dart';
import 'widgets/mobile_navigation_buttons.dart';
import 'widgets/name_widget.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({
    super.key,
  });

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
    context.read<ProjectsCubit>().getProjects();
  }

  final List navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final List<({String label, IconData iconData})> actionLabels = [
      (label: 'Home', iconData: Icons.home_outlined),
      (label: 'About', iconData: Icons.info_outline_rounded),
      (label: 'Projects', iconData: Icons.work_outlined),
      (label: 'Contact', iconData: Icons.contact_page)
    ];
    final ScrollController scrollController = ScrollController();
    return Scaffold(
      backgroundColor: PortfolioColors.primaryColor,
      appBar: (PortfolioConstants.isDesktop())
          ? PreferredSize(
              preferredSize: Size(double.maxFinite, 100.h),
              child: NavbarSection(
                  actionLabels: actionLabels, onNavbarItemTap: onNavbarItemTap),
            )
          : AppBar(
              title: const NameWidget(),
              surfaceTintColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              bottom: const PreferredSize(
                preferredSize: Size(50, 10),
                child: Divider(
                  color: PortfolioColors.secondaryColor,
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
                SizedBox(key: navbarKeys.first),
                const HomeSection(),
                SizedBox(height: 40.h),
                AboutSection(key: navbarKeys[1]),
                SizedBox(height: 40.h),
                ProjectsSection(key: navbarKeys[2]),
                SizedBox(height: 40.h),
                SendEmailSection(
                  key: navbarKeys[3],
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
              backgroundColor: PortfolioColors.primaryColor,
              child: MobileNavigationButtons(
                actionLabels: actionLabels,
                onNavbarItemTap: onNavbarItemTap,
              ),
            )
          : null,
    );
  }

  onNavbarItemTap(int index) {
    Scrollable.ensureVisible(
      navbarKeys[index].currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
