import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ziad_dev/common/style/portfolio_text_theme.dart';

class HomeNameWidget extends StatelessWidget {
  const HomeNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'hi_there_im'.tr(),
          style: const TextStyle(
            fontSize: PortfolioTextTheme.fontSize18,
          ),
        ),
        Text(
          'ziad_adam'.tr(),
          style: const TextStyle(
            fontSize: PortfolioTextTheme.fontSize40,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
