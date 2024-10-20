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
    final Color color = portfolioElevatedButton.color ?? PortfolioColors.accent;
    //switch colors for the button
    final Color buttonColor = portfolioElevatedButton.isLightMode
        ? PortfolioColors.primary // Background color in light mode
        : color; // Background color in dark mode

    const Color textColor = PortfolioColors.black;
    // : PortfolioColors.primaryColor; // Text color

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
              // fontWeight: FontWeight.w700,
              color: textColor,
            ),

        // PortfolioConstants.texttheme.bodyLarge!.copyWith(color: textColor),
      ),
    );
  }

  ButtonStyle buttonStyle(
      Color textColor, Color buttonColor, Color borderColor) {
    return ElevatedButton.styleFrom(
      padding: portfolioElevatedButton.textPadding ??
          const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 8,
          ),
      // foregroundColor: textColor,
      backgroundColor: buttonColor,
      surfaceTintColor: buttonColor,
      alignment: Alignment.center,

      minimumSize: portfolioElevatedButton.width != null &&
              portfolioElevatedButton.height != null
          ? Size(
              portfolioElevatedButton.width ?? 10.w,
              portfolioElevatedButton.height ?? 30.h,
            )
          : null,
      shape: portfolioElevatedButton.shape ??
          RoundedRectangleBorder(
            borderRadius: portfolioElevatedButton.radius != null
                ? BorderRadius.circular(portfolioElevatedButton.radius!)
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
