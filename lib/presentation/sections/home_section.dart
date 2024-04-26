import 'package:flutter/material.dart';
import 'package:my_portfolio/common/widgets/buttons/portfolio_image_widget.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [Text('data')],
        ),
        PortfolioImageWidget(url: 'url'),
      ],
    );
  }
}
