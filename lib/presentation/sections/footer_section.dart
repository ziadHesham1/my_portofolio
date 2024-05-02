import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../common/portfolio_constants.dart';
import '../../common/style/portfolio_colors.dart';
import '../../common/widgets/buttons/portfolio_button_export.dart';
import '../widgets/name_widget.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<IconData> iconsList = [
      FontAwesomeIcons.github,
      FontAwesomeIcons.linkedin,
      FontAwesomeIcons.whatsapp,
      FontAwesomeIcons.telegram,
    ];
    if (PortfolioConstants.portfolio_screen_width() > 400) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const NameWidget(),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: Text('+201116791408'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: Text('ziadhesham280@gmail.com'),
              ),
              Row(
                children: iconsList
                    .map(
                      (e) => PortfolioButton(
                        button: PortfolioContainerButton(
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          hasBorder: false,
                          height: 6,
                          borderRadius: 40,
                          color: Colors.black,
                          onPressed: () {},
                          child: FaIcon(
                            e,
                            color: PortfolioColors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          )
        ],
      );
    } else {
      return const NameWidget();
    }
  }
}
