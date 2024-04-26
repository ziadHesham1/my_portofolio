part of '../portfolio_button.dart';

class _PortfolioAddRemoveButtonWidget extends StatelessWidget {
  final PortfolioAddRemoveButton portfolioAddRemoveButton;

  const _PortfolioAddRemoveButtonWidget(
      {required this.portfolioAddRemoveButton});
  //int count = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PortfolioButton(
          button: PortfolioIconButton(
            height: PortfolioConstants.portfolio_screen_height / 30,
            width: PortfolioConstants.portfolio_screen_width / 30,
            onPressed: portfolioAddRemoveButton.addButtonFunction,
            icon: Icon(Icons.add,
                size: PortfolioConstants.isDesktop
                    ? PortfolioConstants.portfolio_screen_height / 25
                    : PortfolioConstants.portfolio_screen_height / 35),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: SizedBox(
            width: PortfolioConstants.isDesktop ? 50 : 25,
            height: PortfolioConstants.isDesktop ? 50 : 25,
            child: FittedBox(
              child: Text(
                '${portfolioAddRemoveButton.count}',
                style: PortfolioConstants.text_theme.displaySmall!.copyWith(
                  color: PortfolioColors.primaryColor,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ),
        PortfolioButton(
          button: PortfolioIconButton(
            height: PortfolioConstants.portfolio_screen_height / 30,
            width: PortfolioConstants.portfolio_screen_width / 30,
            onPressed: portfolioAddRemoveButton.subtractButtonFunction,
            icon: Icon(Icons.remove,
                size: PortfolioConstants.isDesktop
                    ? PortfolioConstants.portfolio_screen_height / 25
                    : PortfolioConstants.portfolio_screen_height / 35),
          ),
        ),
      ],
    );
  }
}
