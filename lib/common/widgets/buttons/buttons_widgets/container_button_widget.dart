part of '../portfolio_button.dart';

class _PortfolioContainerButtonWidget extends StatelessWidget {
  final PortfolioContainerButton portfolioContainerButton;
  const _PortfolioContainerButtonWidget({
    required this.portfolioContainerButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: PortfolioColors.accentColor.withOpacity(0.3),
        // color: portfolioContainerButton.color,
        borderRadius: BorderRadius.circular(
            portfolioContainerButton.borderRadius ?? 10.r),
        border: portfolioContainerButton.hasBorder
            ? Border.all(color: PortfolioColors.light_grey, width: 2)
            : null,
      ),
      alignment: Alignment.center,
      margin: portfolioContainerButton.margin ?? EdgeInsets.zero,
      child: IconButton(
        style: IconButton.styleFrom(
          shape: portfolioContainerButton.borderRadius != null
              ? RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      portfolioContainerButton.borderRadius!))
              : const ContinuousRectangleBorder(),
          padding: portfolioContainerButton.padding ?? EdgeInsets.zero,
          backgroundColor: portfolioContainerButton.color,
        ),
        onPressed: portfolioContainerButton.onPressed,
        icon: portfolioContainerButton.child,
      ),
    );
  }
}
