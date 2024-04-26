import 'package:flutter/material.dart';

import '../common/portfolio_constants.dart';
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
      appBar: (!(PortfolioConstants.isDesktop)) ? AppBar() : null,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            NavbarSection(actionLabels: actionLabels),
            const HomeSection(),
          ],
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
