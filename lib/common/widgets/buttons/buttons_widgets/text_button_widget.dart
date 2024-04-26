part of '../portfolio_button.dart';

//text button either with or without leading text
class _TextButtonWidget extends StatelessWidget {
  final PortfolioTextButton portfolioTextButton;
  const _TextButtonWidget({
    required this.portfolioTextButton,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        minimumSize: portfolioTextButton.width != null &&
                portfolioTextButton.height != null
            ? Size(
                portfolioTextButton.width ?? 60.w,
                portfolioTextButton.height ?? 30.h,
              )
            : null,
        padding: EdgeInsets.zero,
      ),
      onPressed: portfolioTextButton.onPressed,
      child: (portfolioTextButton.leadingText != null)
          ? withLeadingText()
          : portfolioTextButton.widget != null
              ? Row(
                  children: [
                    Text(
                      portfolioTextButton.buttonLabel,
                      style: portfolioTextButton.buttonStyle ??
                          PortfolioConstants.text_theme.bodyMedium!.copyWith(
                            decoration: portfolioTextButton.hasUnderline
                                ? TextDecoration.underline
                                : TextDecoration.none,
                            decorationColor: portfolioTextButton.color ??
                                PortfolioColors.accentColor,
                            color: portfolioTextButton.color ??
                                PortfolioColors.accentColor,
                          ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 3.w),
                        portfolioTextButton.widget!
                      ],
                    ),
                  ],
                )
              : Text(
                  portfolioTextButton.buttonLabel,
                  style: portfolioTextButton.buttonStyle ??
                      PortfolioConstants.text_theme.bodyMedium!.copyWith(
                        decoration: portfolioTextButton.hasUnderline
                            ? TextDecoration.underline
                            : TextDecoration.none,
                        decorationColor: portfolioTextButton.color ??
                            PortfolioColors.accentColor,
                        color: portfolioTextButton.color ??
                            PortfolioColors.accentColor,
                        fontWeight: FontWeight.w600,
                      ),
                ),
    );
  }

  SizedBox withLeadingText() {
    return SizedBox(
      width: PortfolioConstants.portfolio_screen_width / 1.3,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: "${portfolioTextButton.leadingText!} ",
          style: portfolioTextButton.buttonStyle ??
              PortfolioConstants.text_theme.bodyMedium!
                  .copyWith(color: PortfolioColors.dark_blue),
          children: [
            TextSpan(
              text: portfolioTextButton.buttonLabel,
              style: portfolioTextButton.buttonStyle ??
                  PortfolioConstants.text_theme.bodyMedium!.copyWith(
                    color: PortfolioColors.accentColor,
                    fontWeight: FontWeight.bold,
                    decoration: portfolioTextButton.hasUnderline
                        ? TextDecoration.underline
                        : TextDecoration.none,
                    decorationColor: PortfolioColors.accentColor,
                  ),
            ),
          ],
        ),
        maxLines: 2, // Set the maximum number of lines
        overflow: TextOverflow.visible, // Set the overflow behavior
      ),
    );
  }
}
