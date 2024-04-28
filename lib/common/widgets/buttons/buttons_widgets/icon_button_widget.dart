part of '../portfolio_button.dart';

//button with icon only
class _IconButtonWidget extends StatelessWidget {
  final PortfolioIconButton portfolioIconButton;
  const _IconButtonWidget({
    required this.portfolioIconButton,
  });
  @override
  Widget build(BuildContext context) {
    final Color buttonColor = portfolioIconButton.isLightMode
        ? PortfolioColors.white // Background color in light mode
        : PortfolioColors.secondaryColor; // Background color in dark mode

    final Color textColor = portfolioIconButton.isLightMode
        ? PortfolioColors.secondaryColor
        : PortfolioColors.white; // Text color

    final Color borderColor = portfolioIconButton.isLightMode
        ? textColor
        : PortfolioColors.transparent; // Border color

    CircleBorder? shape2;
    if (portfolioIconButton.hasBorder) {
      shape2 = CircleBorder(
        side: BorderSide(
          color: PortfolioColors.grey.withOpacity(0.5),
        ),
      );
    } else if (portfolioIconButton.isContainer) {
      const ContinuousRectangleBorder();
    } else {
      shape2 = null;
    }
    return IconButton(
      style: IconButton.styleFrom(
        // foregroundColor: PortfolioColors.white,
        backgroundColor: portfolioIconButton.color ?? buttonColor,
        surfaceTintColor: portfolioIconButton.color ?? buttonColor,
        padding: portfolioIconButton.padding ?? EdgeInsets.zero,
        minimumSize: portfolioIconButton.isContainer
            ? null
            : Size(
                portfolioIconButton.width ?? 60,
                portfolioIconButton.height ?? 60,
              ),
        shape: shape2,
      ),
      onPressed: portfolioIconButton.onPressed,
      icon: portfolioIconButton.icon,
    );
  }
}
//elevated button with text and icon
//the icon either at the beginning or the end of the button
