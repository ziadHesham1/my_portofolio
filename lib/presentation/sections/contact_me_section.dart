import 'package:flutter/material.dart';

import '../../common/portfolio_constants.dart';
import '../../common/style/portfolio_colors.dart';

class ContactMeSection extends StatelessWidget {
  const ContactMeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      // TODO: make these with media query
      // width: PortfolioConstants.portfolio_screen_width() / 3.4,
      constraints: const BoxConstraints(
        maxWidth: 450,
        minWidth: 400,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: PortfolioColors.secondaryColor, width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'CONTACT ME',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: PortfolioColors.accentColor,
            ),
          ),
          const Text(
            'Let\'s talk!',
            style: TextStyle(
              fontSize: 18.0,
              // fontWeight: FontWeight.w700,
            ),
          ),
          if (PortfolioConstants.portfolio_screen_width() > 400) ...{
            const Row(
              children: [
                Expanded(
                  flex: 6,
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: Text('E-mail'),
                    subtitle: Text('ziadhesham280@gmail.com'),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: Text('My Resume'),
                    subtitle: Text('View here '),
                  ),
                )
              ],
            )
          } else ...{
            const Column(
              children: [
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text('E-mail'),
                  subtitle: Text('ziadhesham280@gmail.com'),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text('My Resume'),
                  subtitle: Text('View here '),
                )
              ],
            )
          }
        ],
      ),
    );
  }
}
