import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Enderman Face'),
      ),
      body: Center(
        child: EndermanFace(),
      ),
    ),
  ));
}

class EndermanFace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.grey,
            ),
          ),
          Positioned.fill(
            child: CustomPaint(
              painter: EndermanPainter(),
            ),
          ),
        ],
      ),
    );
  }
}

class EndermanPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final facePaint = Paint()..color = Colors.black;
    final eyePaint = Paint()..color = Colors.purple;
    final eyebackPaint = Paint()..color = Colors.pink;

    // Draw face background
    canvas.drawRect(Rect.fromLTWH(25, 25, 200, 150), facePaint);

    // Draw eye background
    canvas.drawRect(Rect.fromLTWH(35, 65, 60, 20), eyebackPaint);
    canvas.drawRect(Rect.fromLTWH(145, 65, 60, 20), eyebackPaint);

    // Draw eyes
    canvas.drawRect(Rect.fromLTWH(45, 65, 15, 20), eyePaint); // Left eye
    canvas.drawRect(Rect.fromLTWH(155, 65, 15, 20), eyePaint); // Right eye
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
