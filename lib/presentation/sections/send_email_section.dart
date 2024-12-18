import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/portfolio_constants.dart';
import '../../common/style/portfolio_colors.dart';
import '../../common/style/portfolio_text_theme.dart';
import '../widgets/contact_info_widget.dart';
import '../widgets/contact_me_form_widget.dart';

class SendEmailSection extends StatelessWidget {
  const SendEmailSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        border: Border.all(
          color: PortfolioColors.secondary,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      constraints: const BoxConstraints(maxWidth: 850),
      child: Column(
        children: [
          const Text(
            'CONTACT ME',
            style: TextStyle(
              fontSize: PortfolioTextTheme.fontSize14,
            ),
          ),
          SizedBox(height: 10.h),
          const Text(
            'Let\'s talk! ✉️',
            style: TextStyle(
              fontSize: PortfolioTextTheme.fontSize22,
              color: PortfolioColors.accent,
              fontWeight: FontWeight.w700,
            ),
          ),
          if (PortfolioConstants.isDesktop()) ...{
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ContactMeFormWidget(),
                ContactInfoWidget(),
              ],
            ),
          } else ...{
            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ContactMeFormWidget(),
                ContactInfoWidget(),
              ],
            ),
          }
        ],
      ),
    );
  }
}
