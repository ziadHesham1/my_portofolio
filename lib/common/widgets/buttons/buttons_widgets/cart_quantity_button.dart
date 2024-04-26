part of '../portfolio_button.dart';

class CartQuantityButton extends StatefulWidget {
  final int number;
  final bool disabled;
  final ValueChanged<int> addOnPressed;
  final ValueChanged<int> removeOnPressed;

  const CartQuantityButton({
    super.key,
    required this.addOnPressed,
    required this.removeOnPressed,
    required this.number,
    this.disabled = false,
  });

  @override
  State<CartQuantityButton> createState() => _CartQuantityButtonState();
}

class _CartQuantityButtonState extends State<CartQuantityButton> {
  int currentNumber = 0;
  @override
  void initState() {
    super.initState();
    currentNumber = widget.number;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(30.r),
      //   // border: Border.all(color: PortfolioColors.grey.withOpacity(0.5)),
      // ),

      height: PortfolioConstants.portfolio_screen_height / 20,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        horizontal: 2,
        vertical: 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          PortfolioButton(
            button: PortfolioIconButton(
              color: PortfolioColors.secondaryColor,
              hasBorder: false,
              onPressed: currentNumber <= 1
                  ? null
                  : () {
                      currentNumber--;
                      widget.removeOnPressed(currentNumber);
                      setState(() {});
                    },
              icon: Icon(
                Icons.remove,
                size: 20,
              ),
            ),
          ),
          SizedBox(
            width: PortfolioConstants.portfolio_screen_width / 14,
            child: Center(
              child: Text(
                '$currentNumber',
                style: PortfolioConstants.text_theme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w700,
                  // color: PortfolioColors.white,
                ),
              ),
            ),
          ),
          PortfolioButton(
            button: PortfolioIconButton(
              // isContainer: true,
              color: PortfolioColors.secondaryColor,
              hasBorder: false,
              onPressed: currentNumber >= 100
                  ? null
                  : () {
                      currentNumber++;

                      widget.addOnPressed(currentNumber);
                      setState(() {});
                    },
              icon: Icon(
                Icons.add,
                size: 20,
                // weight: 130,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
