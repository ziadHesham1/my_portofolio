import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/style/portfolio_colors.dart';
import '../widgets/name_widget.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // if (PortfolioConstants.portfolio_screen_width() > 400) {
    //   return const Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       NameWidget(),
    //       // SocialIconsWidget(),
    //     ],
    //   );
    // } else {
    //   return const NameWidget();
    // }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0.h),
          child: const Divider(
            color: PortfolioColors.secondary,
            thickness: 3,
          ),
        ),
        const NameWidget(),
      ],
    );
  }
}
