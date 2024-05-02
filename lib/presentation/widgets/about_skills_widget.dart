import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../common/style/portfolio_colors.dart';

class AboutSkillsWidget extends StatelessWidget {
  const AboutSkillsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
      color: PortfolioColors.secondaryColor,
      shadowColor: PortfolioColors.secondaryColor.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ...List.generate(
              6,
              (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: FaIcon(
                  FontAwesomeIcons.github,
                  size: 35.h,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
