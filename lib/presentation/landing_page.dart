import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/presentation/sections/projects_section.dart';
import 'package:my_portfolio/presentation/widgets/name_widget.dart';

import '../common/portfolio_assets.dart';
import '../common/portfolio_constants.dart';
import '../common/style/portfolio_colors.dart';
import '../common/widgets/buttons/portfolio_button_export.dart';
import '../common/widgets/buttons/portfolio_image_widget.dart';
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
              const ProjectsSection(),
              Container(
                padding: const EdgeInsets.all(20),
                // TODO: make these with media query
                // height: 200,
                width: 500,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: PortfolioColors.secondaryColor, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'CONTACT ME',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: PortfolioColors.accentColor,
                      ),
                    ),
                    Text(
                      'Let\'s talk!',
                      style: TextStyle(
                        fontSize: 18.0,
                        // fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: ListTile(
                            leading: Icon(Icons.email),
                            title: Text('E-mail'),
                            subtitle: Text('ziadhesham280@gmail.com'),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: ListTile(
                            leading: Icon(Icons.email),
                            title: Text('My Resume'),
                            subtitle: Text('View here '),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 60),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(
                  color: PortfolioColors.secondaryColor,
                  thickness: 3,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const NameWidget(),
                  Row(
                    children: [
                      const Text('+201116791408'),
                      const SizedBox(width: 15),
                      const Text('ziadhesham280@gmail.com'),
                      const SizedBox(width: 15),
                      PortfolioButton(
                        button: PortfolioIconButton(
                          hasBorder: false,
                          height: 10,
                          color: Colors.transparent,
                          onPressed: () {},
                          icon: PortfolioImageWidget(
                            url: PortfolioAssets.github_icon,
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                      PortfolioButton(
                        button: PortfolioContainerButton(
                          hasBorder: false,
                          borderRadius: 40,
                          height: 6,
                          color: Colors.black,
                          onPressed: () {},
                          child: const FaIcon(
                            FontAwesomeIcons.linkedin,
                            color: PortfolioColors.white,
                            size: 20,
                          ),
                        ),
                      ),
                      PortfolioButton(
                        button: PortfolioContainerButton(
                          hasBorder: false,
                          borderRadius: 40,
                          height: 6,
                          color: Colors.black,
                          onPressed: () {},
                          child: const FaIcon(
                            FontAwesomeIcons.whatsapp,
                            color: PortfolioColors.white,
                            size: 20,
                          ),
                        ),
                      ),
                      PortfolioButton(
                        button: PortfolioContainerButton(
                          hasBorder: false,
                          borderRadius: 40,
                          height: 6,
                          color: Colors.black,
                          onPressed: () {},
                          child: const FaIcon(
                            FontAwesomeIcons.telegram,
                            color: PortfolioColors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 60),
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
