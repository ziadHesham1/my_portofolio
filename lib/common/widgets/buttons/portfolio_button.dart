// ignore_for_file: public_member_api_docs, sort_constructors_first
library portfolio_button_library;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../portfolio_constants.dart';
import '../../style/portfolio_colors.dart';
import 'models/buttons_model.dart';
import 'models/portfolio_button_interface.dart';

part 'buttons_widgets/cart_quantity_button.dart';
part 'buttons_widgets/container_button_widget.dart';
part 'buttons_widgets/portfolio_add_remove_button_widget.dart';
part 'buttons_widgets/elevated_button_widget.dart';
part 'buttons_widgets/elevated_button_with_icon_widget.dart';
part 'buttons_widgets/icon_button_widget.dart';
part 'buttons_widgets/quantity_button_widget.dart';
part 'buttons_widgets/text_button_widget.dart';

class PortfolioButton extends StatelessWidget {
  final IPortfolioButton button;

  const PortfolioButton({
    super.key,
    required this.button,
  });

  @override
  Widget build(BuildContext context) {
    switch (button) {
      case PortfolioElevatedButton portfolioElevatedButton:
        return _ElevatedButtonWidget(
            portfolioElevatedButton: portfolioElevatedButton);

      case PortfolioTextButton portfolioTextButton:
        return _TextButtonWidget(portfolioTextButton: portfolioTextButton);

      case PortfolioIconButton portfolioIconButton:
        return _IconButtonWidget(portfolioIconButton: portfolioIconButton);

      case PortfolioElevatedButtonWithIcon portfolioElevatedButtonWithIcon:
        return _ElevatedButtonWithIconWidget(
            portfolioElevatedButtonWithIcon: portfolioElevatedButtonWithIcon);

      // case PortfolioCartButton portfolioCartButton:
      //   return QuantityButtonWidget(portfolioCartButton: portfolioCartButton);

      case PortfolioAddRemoveButton portfolioAddRemoveButton:
        return _PortfolioAddRemoveButtonWidget(
            portfolioAddRemoveButton: portfolioAddRemoveButton);
      case PortfolioContainerButton portfolioContainerButton:
        return _PortfolioContainerButtonWidget(
          portfolioContainerButton: portfolioContainerButton,
        );

      default:
        return const Text('Nothing');
    }
  }
}
