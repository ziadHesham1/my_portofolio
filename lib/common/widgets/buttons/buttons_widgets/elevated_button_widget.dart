part of '../portfolio_button.dart';

//elevated button with text only
class _ElevatedButtonWidget extends StatelessWidget {
  final PortfolioElevatedButton portfolioElevatedButton;
  const _ElevatedButtonWidget({
    required this.portfolioElevatedButton,
  });

  @override
  Widget build(BuildContext context) {
    // active Color is the color that is not white
    final Color activeColor =
        portfolioElevatedButton.activeColor ?? PortfolioColors.accentColor;
    //switch colors for the button
    final Color buttonColor = portfolioElevatedButton.isLightMode
        ? PortfolioColors.primaryColor // Background color in light mode
        : activeColor; // Background color in dark mode

    final Color textColor = portfolioElevatedButton.isLightMode
        ? PortfolioColors.black
        : PortfolioColors.primaryColor; // Text color

    final Color borderColor = portfolioElevatedButton.isLightMode
        ? textColor
        : PortfolioColors.transparent; // Border color

    return ElevatedButton(
      onPressed: portfolioElevatedButton.disabled
          ? null
          : portfolioElevatedButton.onPressed,
      style: buttonStyle(textColor, buttonColor, borderColor),
      child: Text(
        portfolioElevatedButton.text,
        style: portfolioElevatedButton.textStyle ??
            PortfolioConstants.text_theme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w700,
              color: textColor,
            ),

        // PortfolioConstants.texttheme.bodyLarge!.copyWith(color: textColor),
      ),
    );
  }

  ButtonStyle buttonStyle(
      Color textColor, Color buttonColor, Color borderColor) {
    return ElevatedButton.styleFrom(
      padding: portfolioElevatedButton.textPadding,
      // foregroundColor: textColor,
      backgroundColor: buttonColor,
      surfaceTintColor: buttonColor,
      alignment: Alignment.center,
      minimumSize: Size(
        portfolioElevatedButton.width ?? double.infinity,
        portfolioElevatedButton.height ??
            PortfolioConstants.portfolio_button_height,
      ),
      shape: portfolioElevatedButton.shape ??
          RoundedRectangleBorder(
            borderRadius: portfolioElevatedButton.hasRoundedCorners
                ? BorderRadius.circular(
                    PortfolioConstants.portfolio_button_radius)
                : BorderRadius.zero,
            side: BorderSide(
              color: portfolioElevatedButton.hasBorder
                  ? borderColor
                  : PortfolioColors.transparent,
            ),
          ),
    );
  }
}
