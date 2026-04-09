import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ziad_dev/common/style/portfolio_text_theme.dart';
import 'package:ziad_dev/features/contact_me/logic/contact_info_cubit/contact_info_cubit.dart';

class HomeNameWidget extends StatelessWidget {
  const HomeNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactInfoCubit, ContactInfoState>(
      builder: (context, state) {
        final name = state.contactInfo.name;
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
              name.isNotEmpty ? name : 'ziad_adam'.tr(),
              style: const TextStyle(
                fontSize: PortfolioTextTheme.fontSize40,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        );
      },
    );
  }
}
