part of '../portfolio_button.dart';

class QuantityButtonWidget extends StatefulWidget {
  final int number;
  final bool disabled;
  final ValueChanged<int> addOnPressed;
  final ValueChanged<int> removeOnPressed;

  const QuantityButtonWidget({
    super.key,
    required this.addOnPressed,
    required this.removeOnPressed,
    required this.number,
    this.disabled = false,
  });

  @override
  State<QuantityButtonWidget> createState() => _QuantityButtonWidgetState();
}

class _QuantityButtonWidgetState extends State<QuantityButtonWidget> {
  int currentNumber = 0;
  @override
  void initState() {
    super.initState();
    currentNumber = widget.number;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        border: Border.all(color: PortfolioColors.grey.withOpacity(0.5)),
      ),
      height: PortfolioConstants.portfolio_screen_height / 20,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        horizontal: 2.w,
        vertical: 2.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          PortfolioButton(
            button: PortfolioContainerButton(
              hasBorder: false,
              onPressed: currentNumber <= 1
                  ? null
                  : () {
                      currentNumber--;
                      widget.removeOnPressed(currentNumber);
                      setState(() {});
                    },
              child: Icon(
                Icons.remove,
                size: 20.w,
              ),
            ),
          ),
          SizedBox(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                '$currentNumber',
                style: PortfolioConstants.text_theme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          PortfolioButton(
            button: PortfolioContainerButton(
              hasBorder: false,
              onPressed: currentNumber >= 100
                  ? null
                  : () {
                      currentNumber++;

                      widget.addOnPressed(currentNumber);
                      setState(() {});
                    },
              child: Icon(
                Icons.add,
                size: 20.w,
                weight: 130,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
