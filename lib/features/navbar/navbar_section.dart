import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/portfolio_constants.dart';
import '../../common/style/portfolio_colors.dart';
import 'widgets/desktop_navigation_buttons.dart';
import 'widgets/name_widget.dart';

class NavbarSection extends StatelessWidget {
  const NavbarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 20.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const NameWidget(),
              if (PortfolioConstants.isDesktop())
                const DesktopNavigationButtons(),
            ],
          ),
          SizedBox(height: 6.h),
          const Divider(
            color: PortfolioColors.secondary,
            thickness: 3,
          ),
        ],
      ),
    );
  }
}
