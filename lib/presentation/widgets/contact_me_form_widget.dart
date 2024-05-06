import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/widgets/buttons/portfolio_button_export.dart';
import '../../common/widgets/portfolio_text_field.dart';

class ContactMeFormWidget extends StatelessWidget {
  const ContactMeFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 450),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        // color: PortfolioColors.white,
      ),
      // margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 20.h,
      ),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const PortfolioTextField(
            labelText: 'Name',
          ),
          const PortfolioTextField(
            labelText: 'Email Address',
          ),
          const PortfolioTextField(
            labelText: 'Subject',
          ),
          PortfolioTextField(
            labelText: 'Message',
            maxLines: 3,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 6.w,
              vertical: 20.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: PortfolioButton(
              button: PortfolioElevatedButton(
                radius: 8.r,
                onPressed: () {},
                text: 'Contact me',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
