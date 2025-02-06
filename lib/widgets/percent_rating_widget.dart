import 'dart:math';

import 'package:flutter/material.dart';

class PercentRatingWidget extends StatelessWidget {
  final double percent;
  const PercentRatingWidget({Key? key, required this.percent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PercentWidget(
        widget: Text(
          '$percent %',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        percent: percent,
        backgroundColor: Colors.red,
        mainArc: Colors.green,
        spaceArc: Colors.yellow,
      ),
    );
  }
}

class PercentWidget extends StatelessWidget {
  final Widget widget;
  final double percent;
  final Color backgroundColor;
  final Color mainArc;
  final Color spaceArc;
  const PercentWidget(
      {super.key,
      required this.widget,
      required this.percent,
      required this.backgroundColor,
      required this.mainArc,
      required this.spaceArc});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: PercentPaint(
          percent: percent,
          backgroundColor: backgroundColor,
          mainArc: mainArc,
          spaceArc: spaceArc),
      child: Container(
        height: 100,
        width: 100,
        child: Center(
          child: widget,
        ),
      ),
    );
  }
}

class PercentPaint extends CustomPainter {
  final double percent;
  final Color backgroundColor;
  final Color mainArc;
  final Color spaceArc;

  PercentPaint(
      {super.repaint,
      required this.percent,
      required this.backgroundColor,
      required this.mainArc,
      required this.spaceArc});
  @override
  void paint(Canvas canvas, Size size) {
    final paintOval = Paint();
    paintOval.color = backgroundColor;
    paintOval.style = PaintingStyle.fill;
    canvas.drawOval(Offset.zero & size, paintOval);

    final paintSpaceArc = Paint();
    paintSpaceArc.color = spaceArc;
    paintSpaceArc.style = PaintingStyle.stroke;
    paintSpaceArc.strokeWidth = 5;
    canvas.drawArc(
        Offset(7.5, 7.5) & Size(size.width - 15, size.height - 15),
        pi * 2 * percent - (pi / 2),
        pi * 2 * (1.0 - percent),
        false,
        paintSpaceArc);

    final paintMainArc = Paint();
    paintMainArc.color = mainArc;
    paintMainArc.style = PaintingStyle.stroke;
    paintMainArc.strokeCap = StrokeCap.round;

    paintMainArc.strokeWidth = 5;
    canvas.drawArc(Offset(7.5, 7.5) & Size(size.height - 15, size.width - 15),
        -pi / 2, pi * 2 * percent, false, paintMainArc);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
