import 'package:flutter/material.dart';
import 'dart:math';

class CubeWidget extends StatefulWidget {
  @override
  _CubeWidgetState createState() => _CubeWidgetState();
}

class _CubeWidgetState extends State<CubeWidget> with TickerProviderStateMixin {
  late AnimationController _fanController;
  late AnimationController _textController;
  late Animation<double> _fadeAnimation;

  List<String> gpuNames = ['RTX 3080', 'RTX 3090', 'RTX 4070'];
  List<String> gpuPrices = ['\$699.99', '\$1,499.99', '\$2,199.99'];
  int currentGPUIndex = 0;

  @override
  void initState() {
    super.initState();

    _fanController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat();

    _textController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _fadeAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_textController);

    // Change GPU name and price after a few spins
    Future.delayed(const Duration(seconds: 5), () {
      _updateGPUInfo();
    });
  }

  void _updateGPUInfo() {
    setState(() {
      currentGPUIndex = (currentGPUIndex + 1) % gpuNames.length;
      _textController.forward(from: 0.0);
    });

    // Repeat the change after 5 seconds
    Future.delayed(const Duration(seconds: 5), () {
      _updateGPUInfo();
    });
  }

  @override
  void dispose() {
    _fanController.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          // GPU Body and Fans
          CustomPaint(
            size: Size(400, 200),
            painter: GPUPainter(_fanController),
          ),
          // GPU Name and Price
          Positioned(
            bottom: 20,
            child: FadeTransition(
              opacity: _fadeAnimation,
              child: Column(
                children: [
                  Text(
                    gpuNames[currentGPUIndex],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    gpuPrices[currentGPUIndex],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GPUPainter extends CustomPainter {
  final AnimationController controller;

  GPUPainter(this.controller) : super(repaint: controller);

  @override
  void paint(Canvas canvas, Size size) {
    // Apply a slight rotation to give a 3D perspective
    canvas.translate(size.width / 2, size.height / 2);
    canvas.transform(Matrix4.rotationY(0.3).storage);
    canvas.translate(-size.width / 2, -size.height / 2);

    // Create a more complex GPU body shape
    Path gpuBodyPath = Path()
      ..moveTo(size.width * 0.1, size.height * 0.2)
      ..lineTo(size.width * 0.9, size.height * 0.2)
      ..lineTo(size.width * 0.95, size.height * 0.3)
      ..lineTo(size.width * 0.95, size.height * 0.7)
      ..lineTo(size.width * 0.9, size.height * 0.8)
      ..lineTo(size.width * 0.1, size.height * 0.8)
      ..lineTo(size.width * 0.05, size.height * 0.7)
      ..lineTo(size.width * 0.05, size.height * 0.3)
      ..close();

    // Create a gradient for metallic look
    var gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Colors.grey[800]!, Colors.grey[600]!, Colors.grey[400]!],
    );

    var paint = Paint()..shader = gradient.createShader(Offset.zero & size);

    // Draw the GPU body
    canvas.drawPath(gpuBodyPath, paint);

    // Add metallic highlights
    var highlightPaint = Paint()
      ..color = Colors.white.withOpacity(0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawPath(gpuBodyPath, highlightPaint);

    // Draw a more realistic fan
    _drawRealisticFan(
        canvas, Offset(size.width * 0.5, size.height * 0.5), size.width * 0.2);
  }

  void _drawRealisticFan(Canvas canvas, Offset center, double radius) {
    final fanPaint = Paint()
      ..color = Colors.grey[300]!
      ..style = PaintingStyle.fill;

    // Draw fan blades with a curved shape
    for (int i = 0; i < 7; i++) {
      final angle = (controller.value * 2.0 * pi) + (i * 2 * pi / 7);
      final path = Path()
        ..moveTo(center.dx, center.dy)
        ..cubicTo(
          center.dx + radius * 0.3 * cos(angle),
          center.dy + radius * 0.3 * sin(angle),
          center.dx + radius * 0.7 * cos(angle - 0.2),
          center.dy + radius * 0.7 * sin(angle - 0.2),
          center.dx + radius * cos(angle),
          center.dy + radius * sin(angle),
        )
        ..lineTo(center.dx, center.dy);
      canvas.drawPath(path, fanPaint);
    }

    // Draw fan center
    canvas.drawCircle(
        center, radius * 0.15, Paint()..color = Colors.grey[600]!);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
