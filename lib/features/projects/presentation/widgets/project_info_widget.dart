import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/extensions/string_extension.dart';
import '../../../../common/network/url_helper.dart';
import '../../../../common/style/portfolio_colors.dart';
import '../../../../common/style/portfolio_text_theme.dart';
import '../../../../common/widgets/portfolio_loading_widget.dart';
import '../../../../common/widgets/shimmer_widgets.dart';
import '../../data/models/project_model.dart';

class _TechChip extends StatelessWidget {
  final String label;
  const _TechChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.secondary, width: 1.5),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: PortfolioTextTheme.fontSize14,
          fontWeight: FontWeight.w500,
          color: AppColors.black,
        ),
      ),
    );
  }
}

class _HoverableTitle extends StatefulWidget {
  final String title;
  final String? url;
  const _HoverableTitle({required this.title, this.url});

  @override
  State<_HoverableTitle> createState() => _HoverableTitleState();
}

class _HoverableTitleState extends State<_HoverableTitle> {
  bool _hovered = false;
  bool get _clickable => widget.url.isNotEmptyOrNull;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: _clickable ? SystemMouseCursors.click : MouseCursor.defer,
      onEnter: (_) {
        if (_clickable) setState(() => _hovered = true);
      },
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: _clickable ? () => UrlHelper.launchURL(widget.url!) : null,
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 150),
          style: TextStyle(
            fontSize: PortfolioTextTheme.fontSize28,
            fontWeight: FontWeight.w800,
            color: _hovered ? AppColors.accent : AppColors.black,
            decoration:
                _hovered ? TextDecoration.underline : TextDecoration.none,
            decorationColor: AppColors.accent,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(widget.title),
              if (_clickable) ...[
                const SizedBox(width: 8),
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 150),
                  opacity: _hovered ? 1.0 : 0.0,
                  child: const Icon(
                    Icons.arrow_outward_rounded,
                    size: 20,
                    color: AppColors.accent,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectInfoWidget extends StatelessWidget {
  final ProjectModel project;
  final String categoryLabel;

  const ProjectInfoWidget({
    super.key,
    required this.project,
    required this.categoryLabel,
  });

  @override
  Widget build(BuildContext context) {
    return PortfolioLoadingWidget(
      loadingChild: ShimmerWidgets.shimmerText(
        lines: 4,
        lineHeight: PortfolioTextTheme.fontSize16.toDouble(),
        width: double.infinity,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            decoration: BoxDecoration(
              color: const Color(0xFFbbf7d0),
              borderRadius: BorderRadius.circular(99),
            ),
            child: Text(
              categoryLabel.toUpperCase(),
              style: const TextStyle(
                fontSize: PortfolioTextTheme.fontSize12,
                fontWeight: FontWeight.w600,
                color: Color(0xFF166434),
                letterSpacing: 0.8,
              ),
            ),
          ),
          SizedBox(height: 12.h),
          _HoverableTitle(
            title: project.title,
            url: project.actionLinks.externalReference,
          ),
          SizedBox(height: 12.h),
          Text(
            project.subTitle,
            style: const TextStyle(
              fontSize: PortfolioTextTheme.fontSize16,
              color: Colors.black87,
              height: 1.5,
            ),
          ),
          if (project.techStack.isNotEmpty) ...[
            SizedBox(height: 16.h),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: project.techStack
                  .map((tag) => _TechChip(label: tag))
                  .toList(),
            ),
          ],
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}
