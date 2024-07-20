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
          padding: EdgeInsets.zero,
        ),
        onPressed: portfolioTextButton.onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              portfolioTextButton.buttonLabel,
              style: portfolioTextButton.buttonStyle ??
                  PortfolioConstants.text_theme.bodyLarge!.copyWith(
                      fontSize: PortfolioTextTheme.fontSize18,
                      decoration: portfolioTextButton.hasUnderline
                          ? TextDecoration.underline
                          : TextDecoration.none,
                      color: portfolioTextButton.color ?? PortfolioColors.black,
                      overflow: TextOverflow.clip),
              overflow: TextOverflow.clip,
              maxLines: 2,
            ),
            if (portfolioTextButton.widget != null) portfolioTextButton.widget!,
          ],
        ));
  }
}
