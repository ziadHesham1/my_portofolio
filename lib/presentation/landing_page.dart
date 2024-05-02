import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/widgets/name_widget.dart';

import '../common/portfolio_constants.dart';
import '../common/style/portfolio_colors.dart';
import 'sections/about_section.dart';
import 'sections/contact_me_section.dart';
import 'sections/footer_section.dart';
import 'sections/home_section.dart';
import 'sections/navbar_section.dart';
import 'sections/projects_section.dart';
import 'widgets/mobile_navigation_buttons.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> actionLabels = ['Home', 'About', 'Projects', 'Contact'];

    return Scaffold(
      backgroundColor: PortfolioColors.primaryColor,
      appBar: (!(PortfolioConstants.isDesktop()))
          ? AppBar(
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
            )
          : null,
      body: Center(
        child: Container(
          alignment: Alignment.center,
          // constraints: const BoxConstraints(maxWidth: 1600),
          padding: (PortfolioConstants.isDesktop())
              ? const EdgeInsets.symmetric(horizontal: 50.0)
              : const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (PortfolioConstants.isDesktop())
                  NavbarSection(actionLabels: actionLabels),
                const HomeSection(),
                const SizedBox(height: 60),
                const AboutSection(),
                const SizedBox(height: 60),
                const ProjectsSection(),
                const SizedBox(height: 60),
                const ContactMeSection(),
                const SizedBox(height: 60),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Divider(
                    color: PortfolioColors.secondaryColor,
                    thickness: 3,
                  ),
                ),
                const FooterSection(),
                const SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
      endDrawer: (!(PortfolioConstants.isDesktop()))
          ? Drawer(
              child: MobileNavigationButtons(
                actionLabels: actionLabels,
              ),
            )
          : null,
    );
  }
}
