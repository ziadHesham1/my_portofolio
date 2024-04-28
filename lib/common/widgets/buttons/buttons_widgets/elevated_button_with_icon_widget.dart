part of '../portfolio_button.dart';

//elevated button with text and icon
//the icon either at the beginning or the end of the button

class _ElevatedButtonWithIconWidget extends StatelessWidget {
  final PortfolioElevatedButtonWithIcon portfolioElevatedButtonWithIcon;
  const _ElevatedButtonWithIconWidget({
    required this.portfolioElevatedButtonWithIcon,
  });

  @override
  Widget build(BuildContext context) {
    // active Color is the color that is not white
    final Color activeColor =
        portfolioElevatedButtonWithIcon.color ?? PortfolioColors.accentColor;
    //switch colors for the button
    final Color buttonColor = portfolioElevatedButtonWithIcon.isLightMode
        ? PortfolioColors.primaryColor // Background color in light mode
        : activeColor; // Background color in dark mode

    final Color textColor = portfolioElevatedButtonWithIcon.isLightMode
        ? PortfolioColors.black
        : PortfolioColors.primaryColor; // Text color

    final Color borderColor = portfolioElevatedButtonWithIcon.isLightMode
        ? textColor
        : PortfolioColors.transparent; // Border color

    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      // padding: EdgeInsets.all(3.h),
      foregroundColor: textColor,
      backgroundColor: buttonColor,
      surfaceTintColor: buttonColor,
      minimumSize: Size(
        portfolioElevatedButtonWithIcon.width ?? 60,
        portfolioElevatedButtonWithIcon.height ?? 60,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: borderColor,
        ),
      ),
    );

    return ElevatedButton(
      style: buttonStyle,
      onPressed: portfolioElevatedButtonWithIcon.onPressed,

      //first row to make the sized box at the end of the button
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // portfolioElevatedButtonWithIcon.icon,
          SizedBox(width: 30.h),
          //sized box to take width so the text will be in the center
          Text(
            portfolioElevatedButtonWithIcon.text,
            style: PortfolioConstants.text_theme.bodyLarge!
                .copyWith(color: textColor),
            textAlign: TextAlign.center,
          ),
          SizedBox(width: 30.h),
          portfolioElevatedButtonWithIcon.icon,
        ],
      ),
    );
  }
}
