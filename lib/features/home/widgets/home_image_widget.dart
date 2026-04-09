import 'package:flutter/material.dart';
import 'package:ziad_dev/common/portfolio_constants.dart';

class HomeImageWidget extends StatelessWidget {
  const HomeImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double size = PortfolioConstants.portfolio_screen_height() / 2.2;
    final double imageSize = size - 24;

    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 250),
      child: SizedBox(
        width: size + 60,
        height: size + 80,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            // green circle background fill
            Positioned(
              bottom: 30,
              child: Container(
                width: imageSize - 20,
                height: imageSize,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFBBF7D0),
                ),
              ),
            ),

            // outer ring
            Positioned(
              bottom: 30,
              child: Container(
                width: imageSize,
                height: imageSize,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  border: Border.all(
                    color: const Color(0xFFA7F3D0),
                    width: 8,
                  ),
                ),
              ),
            ),

            // image — sides+bottom clipped by circle, top open for breakout
            Positioned(
              bottom: 35,
              child: ClipPath(
                clipper: _BreakoutCircleClipper(imageSize),
                child: SizedBox(
                  width: imageSize,
                  height: imageSize * 1.4,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.network(
                      'https://wakkvxgirxraoxygmsmn.supabase.co/storage/v1/object/public/portfolio/my_image.png',
                      width: imageSize,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ),

            // "Available for work" badge — bottom right
            Positioned(
              bottom: 45,
              right: 0,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border:
                      Border.all(color: const Color(0xFFBBF7D0), width: 1.5),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF22C55E),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Available for work',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF111111),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // "Flutter Dev" badge — top left
            Positioned(
              top: 65,
              left: 20,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border:
                      Border.all(color: const Color(0xFFBBF7D0), width: 1.5),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Flutter Dev',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF111111),
                      ),
                    ),
                    Text(
                      '3+ years exp',
                      style: TextStyle(
                        fontSize: 11,
                        color: Color(0xFF6B7280),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BreakoutCircleClipper extends CustomClipper<Path> {
  final double size;

  _BreakoutCircleClipper(this.size);

  @override
  Path getClip(Size s) {
    final path = Path();

    final double circleTop = s.height - size;
    // shrink the clip oval by the ring width (8px) to match the INNER circle edge
    const double ringWidth = 8;
    final Rect circleRect = Rect.fromLTWH(
      ringWidth,
      circleTop + ringWidth,
      size - ringWidth * 2,
      size - ringWidth * 2,
    );

    // inner circle — clips sides and bottom
    path.addOval(circleRect);

    // open rectangle in top center — lets head break out
    final double openWidth = size * 0.6;
    final double openLeft = (size - openWidth) / 2;
    path.addRect(
        Rect.fromLTWH(openLeft, 0, openWidth, circleTop + ringWidth + 20));

    path.fillType = PathFillType.nonZero;
    return path;
  }

  @override
  bool shouldReclip(_BreakoutCircleClipper old) => old.size != size;
}
