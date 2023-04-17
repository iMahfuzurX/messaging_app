import 'package:flutter/material.dart';

class TopBarPainter extends CustomPainter {
  final Color paintColor;

  TopBarPainter(this.paintColor);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = paintColor;
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(0, size.height)
      ..quadraticBezierTo(size.width * 0.4, size.height * 0.9, size.width * 0.7,
          size.height * 0.6)
      ..quadraticBezierTo(size.width * 0.8, size.height * 0.9, size.width * 0.7,
          size.height * (0.6-0.05))
      ..lineTo(size.width, size.height * 0.625)
      ..lineTo(size.width, 0)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}