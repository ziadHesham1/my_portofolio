import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../common/network/url_helper.dart';
import '../../../common/portfolio_constants.dart';
import '../../../common/style/portfolio_colors.dart';
import '../../../common/widgets/buttons/portfolio_button_export.dart';
import '../../../common/widgets/portfolio_loading_widget.dart';
import '../../../common/widgets/shimmer_widgets.dart';
import 'home_name_widget.dart';
import 'home_summery_widget.dart';

class HomeInfoWidget extends StatelessWidget {
  const HomeInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: 300,
        maxWidth: 400,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeNameWidget(),
          const Divider(
            color: PortfolioColors.accent,
            thickness: 5,
          ),
          const HomeSummeryWidget(),
          SizedBox(height: 16.h),
          Container(
            constraints: const BoxConstraints(
              minWidth: 300,
            ),
            child: Row(
              children: [
                _actionButton(
                    flex: 7,
                    text: 'Contact Me',
                    onPressed: () {
                      onNavbarItemTap(3);
                    }),
                SizedBox(width: 6.w),
                _actionButton(
                  flex: 7,
                  onPressed: () {
                    onNavbarItemTap(2);
                  },
                  text: 'View my work',
                ),
                SizedBox(width: 6.w),
                Expanded(
                  flex: 2,
                  child: PortfolioLoadingWidget(
                    loadingChild: ShimmerWidgets.shimmerContainer(
                      width: double.infinity,
                      height: 40,
                    ),
                    child: PortfolioButton(
                      button: PortfolioIconButton(
                          hasBorder: false,
                          color: Colors.transparent,
                          onPressed: () {
                            UrlHelper.launchURL(PortfolioConstants.githubUrl);
                          },
                          icon: const FaIcon(FontAwesomeIcons.github)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _actionButton({
    required int flex,
    required String text,
    Function()? onPressed,
  }) {
    return Expanded(
      flex: flex,
      child: PortfolioLoadingWidget(
        loadingChild: ShimmerWidgets.shimmerContainer(
          width: double.infinity,
          borderRadius: 8.r,
          height: 40,
        ),
        child: PortfolioButton(
          button: PortfolioElevatedButton(
            radius: 8.r,
            onPressed: onPressed,
            text: text,
          ),
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
