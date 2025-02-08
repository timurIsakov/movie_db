import 'dart:math';

import 'package:flutter/material.dart';

class PercentRatingWidget extends StatelessWidget {
  final double percent;
  final Color backgroundColor;
  final Color mainArcColor;
  final Color spaceArcColor;
  final double diameter;
  const PercentRatingWidget(
      {Key? key,
      required this.percent,
      required this.backgroundColor,
      required this.mainArcColor,
      required this.spaceArcColor,
      required this.diameter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PercentWidget(
        percent: percent,
        backgroundColor: backgroundColor,
        mainArcColor: mainArcColor,
        spaceArcColor: spaceArcColor,
        diameter: diameter,
      ),
    );
  }
}

class PercentWidget extends StatelessWidget {
  final double percent;
  final Color backgroundColor;
  final Color mainArcColor;
  final Color spaceArcColor;
  final double diameter;
  const PercentWidget(
      {super.key,
      required this.percent,
      required this.backgroundColor,
      required this.mainArcColor,
      required this.spaceArcColor,
      required this.diameter});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: PercentPaint(
        percent: percent,
        backgroundColor: backgroundColor,
        mainArcColor: mainArcColor,
        spaceArcColor: spaceArcColor,
      ),
      child: Container(
        height: diameter,
        width: diameter,
        constraints: BoxConstraints(
          minHeight: 50,
          minWidth: 50,
          maxWidth: 100,
          maxHeight: 100,
        ),
        child: Center(
          child: FittedBox(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Text(
                '${percent == 1 ? '100' : (percent * 100).toInt()} %',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PercentPaint extends CustomPainter {
  final double percent;
  final Color backgroundColor;
  final Color mainArcColor;
  final Color spaceArcColor;

  PercentPaint({
    super.repaint,
    required this.percent,
    required this.backgroundColor,
    required this.mainArcColor,
    required this.spaceArcColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    drawOval(canvas, size);
    drawMainArc(canvas, size);
    drawSpaceArc(canvas, size);
  }

  void drawSpaceArc(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = mainArcColor;
    paint.style = PaintingStyle.stroke;
    paint.strokeCap = StrokeCap.round;
    paint.strokeWidth = 5;
    canvas.drawArc(Offset(7.5, 7.5) & Size(size.height - 15, size.width - 15),
        -pi / 2, pi * 2 * percent, false, paint);
  }

  void drawMainArc(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = spaceArcColor;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 5;
    canvas.drawArc(Offset(7.5, 7.5) & Size(size.width - 15, size.height - 15),
        pi * 2 * percent - (pi / 2), pi * 2 * (1.0 - percent), false, paint);
  }

  void drawOval(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = backgroundColor;
    paint.style = PaintingStyle.fill;
    canvas.drawOval(Offset.zero & size, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
