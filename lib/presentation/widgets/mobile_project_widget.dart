import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../common/portfolio_assets.dart';
import '../../common/style/portfolio_colors.dart';
import '../../common/widgets/buttons/portfolio_button_export.dart';
import '../../common/widgets/buttons/portfolio_image_widget.dart';
import '../../data/models/project_model.dart';

class MobileProjectWidget extends StatelessWidget {
  final ProjectModel project;
  const MobileProjectWidget({
    required this.project,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          project.title,
          style: const TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          project.subTitle,
          style: const TextStyle(
            fontSize: 18.0,
          ),
        ),
        const SizedBox(height: 30),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Material(
            elevation: 4.0,
            shadowColor: PortfolioColors.black,
            borderRadius: BorderRadius.circular(10.0.r),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0.r),
              child: PortfolioImageWidget(
                // width: PortfolioConstants.portfolio_screen_width() / 2.5,
                url: project.images.first,
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PortfolioButton(
              button: PortfolioTextButton(
                buttonStyle: const TextStyle(
                  fontWeight: FontWeight.normal,
                  color: PortfolioColors.black,
                ),
                onPressed: () {},
                buttonLabel: 'View on Github ',
                widget: PortfolioImageWidget(
                  url: PortfolioAssets.github_icon,
                  height: 40,
                ),
              ),
            ),
            const SizedBox(width: 50),
            PortfolioButton(
              button: PortfolioTextButton(
                buttonStyle: const TextStyle(
                  fontWeight: FontWeight.normal,
                  color: PortfolioColors.black,
                ),
                onPressed: () {},
                buttonLabel: 'Live Preview',
                widget: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: FaIcon(
                    FontAwesomeIcons.arrowUpRightFromSquare,
                    color: PortfolioColors.black,
                    size: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
