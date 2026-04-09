import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../common/extensions/string_extension.dart';
import '../../../../common/network/url_helper.dart';
import '../../../../common/style/portfolio_colors.dart';
import '../../../../common/style/portfolio_text_theme.dart';
import '../../../../common/widgets/portfolio_loading_widget.dart';
import '../../data/models/project_model.dart';

class ProjectActionButtons extends StatelessWidget {
  final ProjectModel project;

  const ProjectActionButtons({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final buttons = [
      if (project.actionLinks.appStore.isNotEmptyOrNull)
        _LinkButton(
          label: 'app_store'.tr(),
          url: project.actionLinks.appStore!,
          icon: FontAwesomeIcons.apple,
        ),
      if (project.actionLinks.googlePlay.isNotEmptyOrNull)
        _LinkButton(
          label: 'google_play'.tr(),
          url: project.actionLinks.googlePlay!,
          icon: FontAwesomeIcons.googlePlay,
        ),
      if (project.actionLinks.website.isNotEmptyOrNull)
        _LinkButton(
          label: 'website'.tr(),
          url: project.actionLinks.website!,
          icon: FontAwesomeIcons.globe,
        ),
      if (project.actionLinks.github.isNotEmptyOrNull)
        _LinkButton(
          label: 'view_on_github'.tr(),
          url: project.actionLinks.github!,
          icon: FontAwesomeIcons.github,
        ),
      if (project.actionLinks.demoVideo.isNotEmptyOrNull)
        _LinkButton(
          label: 'live_preview'.tr(),
          url: project.actionLinks.demoVideo!,
          icon: FontAwesomeIcons.arrowUpRightFromSquare,
        ),
    ];

    return PortfolioLoadingWidget(
      loadingChild: const SizedBox.shrink(),
      child: Wrap(
        spacing: 24,
        runSpacing: 12,
        children: buttons,
      ),
    );
  }
}

class _LinkButton extends StatefulWidget {
  final String label;
  final String url;
  final IconData icon;

  const _LinkButton({
    required this.label,
    required this.url,
    required this.icon,
  });

  @override
  State<_LinkButton> createState() => _LinkButtonState();
}

class _LinkButtonState extends State<_LinkButton> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: () => UrlHelper.launchURL(widget.url),
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 150),
          style: TextStyle(
            fontSize: PortfolioTextTheme.fontSize16,
            fontWeight: FontWeight.w500,
            color: _hovered ? AppColors.accent : AppColors.black,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              FaIcon(
                widget.icon,
                size: 16,
                color: _hovered ? AppColors.accent : AppColors.black,
              ),
              const SizedBox(width: 8),
              Text(widget.label),
            ],
          ),
        ),
      ),
    );
  }
}
