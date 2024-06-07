import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/portfolio_assets.dart';
import '../../common/style/portfolio_colors.dart';

class AboutSkillsWidget extends StatelessWidget {
  const AboutSkillsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // List of icon assets
    final List<String> skillIcons = [
      PortfolioAssets.flutter_icon,
      PortfolioAssets.dart_icon,
      PortfolioAssets.vscode_icon,
      PortfolioAssets.firebase_icon,
      PortfolioAssets.supabase_icon,
      PortfolioAssets.github_icon,
      PortfolioAssets.figma_icon,
    ];

    return Material(
      elevation: 3,
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
      color: PortfolioColors.secondaryColor,
      shadowColor: PortfolioColors.secondaryColor.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ...List.generate(
              skillIcons.length,
              (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  skillIcons[index],
                  height: 30.h,
                  width: 35.h,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
