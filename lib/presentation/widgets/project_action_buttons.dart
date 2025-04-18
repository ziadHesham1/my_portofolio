import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/common/extensions/string_extension.dart';
import 'package:my_portfolio/common/widget_children_helpers.dart';
import 'package:my_portfolio/common/widgets/portfolio_loading_widget.dart';
import 'package:my_portfolio/common/widgets/shimmers_widget.dart';

import '../../common/network/url_helper.dart';
import '../../common/portfolio_assets.dart';
import '../../common/style/portfolio_colors.dart';
import '../../common/widgets/buttons/portfolio_button_export.dart';
import '../../common/widgets/image_widgets/portfolio_image_widget.dart';
import '../../common/widgets/responsive_row.dart';
import '../../data/models/project_model.dart';

class ProjectActionButtons extends StatelessWidget {
  final ProjectModel project;
  const ProjectActionButtons({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    var list = addSpacingBetween(space: 25, direction: Axis.horizontal, [
      if (project.actionLinks.appStore.isNotEmptyOrNull)
        _button(
          title: 'App Store',
          url: project.actionLinks.appStore!,
          icon: FontAwesomeIcons.apple,
        ),
      if (project.actionLinks.googlePlay.isNotEmptyOrNull)
        _button(
          title: 'Google Play',
          url: project.actionLinks.googlePlay!,
          icon: FontAwesomeIcons.googlePlay,
        ),
      if (project.actionLinks.website.isNotEmptyOrNull)
        _button(
          title: 'Website',
          url: project.actionLinks.website!,
          icon: FontAwesomeIcons.globe,
        ),
      if (project.actionLinks.github.isNotEmptyOrNull)
        _button(
          title: 'View on Github',
          url: project.actionLinks.github!,
          icon: FontAwesomeIcons.github,
        ),
      if (project.actionLinks.demoVideo.isNotEmptyOrNull)
        _button(
          title: 'Live Preview',
          url: project.actionLinks.demoVideo!,
          icon: FontAwesomeIcons.arrowUpRightFromSquare,
        ),
    ]);
    // return Row(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: list,
    // );

    return PortfolioLoadingWidget(
        loadingChild: const SizedBox.shrink(),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 450),
          child: ResponsiveRow(
            minRowWidth: 400,
            rowMainAxisAlignment: MainAxisAlignment.center,
            columnMainAxisAlignment: MainAxisAlignment.center,
            childrenBuilder: (isRow) {
              return list;
            },
          ),
        ));
  }

  PortfolioButton _button({
    required String title,
    required String url,
    // String? icon,
    IconData? icon,
    // Widget? widget,
  }) {
    return PortfolioButton(
      button: PortfolioTextButton(
        buttonLabel: title,
        onPressed: () {
          UrlHelper.launchURL(url);
        },
        widget: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FaIcon(
            icon,
            color: PortfolioColors.black,
            size: 20,
          ),
        ),
      ),
    );
  }
}
