import 'package:flutter/material.dart';

import '../common/portfolio_constants.dart';
import '../common/style/portfolio_colors.dart';
import 'sections/about_section.dart';
import 'sections/home_section.dart';
import 'sections/navbar_section.dart';
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
      appBar: (!(PortfolioConstants.isDesktop)) ? AppBar() : null,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              NavbarSection(actionLabels: actionLabels),
              const HomeSection(),
              const AboutSection(),
            ],
          ),
        ),
      ),
      drawer: (!(PortfolioConstants.isDesktop))
          ? Drawer(
              child: MobileNavigationButtons(
                actionLabels: actionLabels,
              ),
            )
          : null,
    );
  }
}
