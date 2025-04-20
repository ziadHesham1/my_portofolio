import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/style/portfolio_colors.dart';
import '../../../common/style/portfolio_text_theme.dart';
import '../../../common/widgets/shimmer_widgets.dart';
import 'home_name_widget.dart';

class LoadingHomeInfoWidget extends StatelessWidget {
  const LoadingHomeInfoWidget({super.key});

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
          SizedBox(height: 16.h),

          // Shimmer Placeholder for Description Text (3 lines)
          ShimmerWidgets.shimmerText(
              lines: 3, lineHeight: PortfolioTextTheme.fontSize16.toDouble()),

          SizedBox(height: 16.h),

          // Shimmer Placeholder for Buttons
          Row(
            children: [
              Expanded(
                flex: 7,
                child: ShimmerWidgets.shimmerContainer(
                  width: double.infinity,
                  height: 40,
                  borderRadius: 8,
                ),
              ),
              SizedBox(width: 6.w),
              Expanded(
                flex: 8,
                child: ShimmerWidgets.shimmerContainer(
                  width: double.infinity,
                  height: 40,
                  borderRadius: 8,
                ),
              ),
              // SizedBox(width: 6.w),
              Expanded(
                flex: 2,
                child: ShimmerWidgets.shimmerContainer(
                  width: double.infinity,
                  height: 40,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
