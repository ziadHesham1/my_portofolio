import 'package:flutter/material.dart';

import '../../../common/widgets/responsive_row.dart';
import '../widgets/home_image_widget.dart';
import '../widgets/home_info_widget.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 1200),
      child: ResponsiveRow(
        minRowWidth: 900,
        rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
        childrenBuilder: (isRow) => [
          if (!isRow) const SizedBox(height: 80),
          const HomeInfoWidget(),
          const HomeImageWidget(),
        ],
      ),
    );
  }
}
