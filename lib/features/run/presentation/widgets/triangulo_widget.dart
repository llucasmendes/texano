import 'package:flutter/material.dart';
import 'package:texano/core/utils/app_colors.dart';
import 'package:texano/core/utils/sizes.dart';

class TrianguloWidget extends StatelessWidget {
  const TrianguloWidget({
    this.color = AppColors.white,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        size: Size(16.w, 15.h),
        painter: DrawTrianglePainter(color),
      ),
    );
  }
}

class DrawTrianglePainter extends CustomPainter {
  DrawTrianglePainter(Color color) {
    _paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
  }

  Paint _paint;

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(0, size.height + 1);
    path.lineTo(3 * size.width / 6, size.height / 3);

    path.lineTo(size.width, size.height + 1);
    path.close();
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(_) {
    return false;
  }
}
