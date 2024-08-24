import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_neumorphic/flutter_neumorphic.dart';

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
            painter: GPUPainter(
                _fanController,
                AppColors.contentPrimary(context),
                AppColors.backgroundPrimary(context),
                AppColors.contentSecondary(context),
                AppColors.backgroundSecondary(context),
                AppColors.contentTertiary(context),
                AppColors.backgroundTertiary(context)),
          ),
        ],
      ),
    );
  }
}

class GPUPainter extends CustomPainter {
  final AnimationController controller;
  final Color contentPrimary;
  final Color backgroundPrimary;
  final Color contentSecondary;
  final Color backgroundSecondary;
  final Color contentTertiary;
  final Color backgroundTertiary;

  GPUPainter(
      this.controller,
      this.contentPrimary,
      this.backgroundPrimary,
      this.contentSecondary,
      this.backgroundSecondary,
      this.contentTertiary,
      this.backgroundTertiary)
      : super(repaint: controller);

  @override
  void paint(Canvas canvas, Size size) {
    final baseColor = AppColors.gray800;
    final contentColor = AppColors.gray200;

    final lightSource = Offset(-size.width * 0.5, -size.height * 0.5);

    // Draw main body
    _drawNeumorphicBackground(canvas, size, backgroundTertiary, lightSource);

    // Draw X shape
    _drawNeumorphicXShape(canvas, size, contentTertiary, lightSource);

    // Draw fan
    _drawNeumorphicFan(
      canvas,
      size,
      contentTertiary,
      lightSource,
    );

    // Draw text
    _drawText(canvas, contentTertiary, size, 'RTX 30/40');
  }

  void _drawNeumorphicBackground(
      Canvas canvas, Size size, Color baseColor, Offset lightSource) {
    final rect = RRect.fromRectAndRadius(
      Rect.fromLTWH(0, 0, size.width, size.height),
      Radius.circular(size.height * 0.1),
    );

    // Base
    canvas.drawRRect(rect, Paint()..color = baseColor);

    // Highlight
    final highlightPaint = Paint()
      ..shader = RadialGradient(
        center: Alignment(
            lightSource.dx / size.width, lightSource.dy / size.height),
        radius: 1,
        colors: [baseColor.brighten(0.1), baseColor],
      ).createShader(rect.outerRect);
    canvas.drawRRect(rect, highlightPaint);

    // Shadow
    final shadowPaint = Paint()
      ..shader = RadialGradient(
        center: Alignment(
            -lightSource.dx / size.width, -lightSource.dy / size.height),
        radius: 1,
        colors: [baseColor.darken(0.1), baseColor],
      ).createShader(rect.outerRect);
    canvas.drawRRect(rect, shadowPaint);
  }

  void _drawNeumorphicXShape(
      Canvas canvas, Size size, Color baseColor, Offset lightSource) {
    final midX = size.width * 0.5;
    final midY = size.height * 0.5;
    final offset = size.width *
        0.2; // Adjust this value to control the length of the arrows
    final bandSize = size.width * 0.05; // Size of the band at the intersection

    final xPath = Path()
      ..moveTo(midX - offset, midY - offset)
      ..lineTo(midX + offset, midY + offset)
      ..moveTo(midX - offset, midY + offset)
      ..lineTo(midX + offset, midY - offset);

    final bandPath = Path()
      ..addRect(Rect.fromCenter(
        center: Offset(midX, midY),
        width: bandSize,
        height: bandSize,
      ));

    canvas.drawPath(
      xPath,
      Paint()
        ..color = baseColor.brighten(0.05)
        ..style = PaintingStyle.stroke
        ..strokeWidth = size.width * 0.02,
    );

    canvas.drawPath(
      xPath.shift(Offset(size.width * 0.005, size.height * 0.005)),
      Paint()
        ..color = baseColor.darken(0.05)
        ..style = PaintingStyle.stroke
        ..strokeWidth = size.width * 0.02,
    );

    canvas.drawPath(
      bandPath,
      Paint()
        ..color = baseColor.brighten(0.05)
        ..style = PaintingStyle.fill,
    );

    canvas.drawPath(
      bandPath.shift(Offset(size.width * 0.005, size.height * 0.005)),
      Paint()
        ..color = baseColor.darken(0.05)
        ..style = PaintingStyle.fill,
    );
  }

  void _drawNeumorphicFan(
      Canvas canvas, Size size, Color baseColor, Offset lightSource) {
    final center = Offset(size.width * 0.8, size.height * 0.5);
    final radius = size.height * 0.35;

    // Fan background
    canvas.drawCircle(
      center,
      radius,
      Paint()..color = baseColor.darken(0.05),
    );

    // Fan blades
    for (int i = 0; i < 9; i++) {
      final angle = (controller.value * 2 * pi) + (i * 2 * pi / 9);
      final bladePath = Path()
        ..moveTo(center.dx, center.dy)
        ..arcTo(
          Rect.fromCircle(center: center, radius: radius),
          angle,
          pi / 9,
          false,
        )
        ..lineTo(center.dx, center.dy)
        ..close();

      canvas.drawPath(
        bladePath,
        Paint()..color = baseColor.brighten(0.02),
      );

      canvas.drawPath(
        bladePath.shift(Offset(size.width * 0.005, size.height * 0.005)),
        Paint()..color = baseColor.darken(0.02),
      );
    }

    // Fan center
    canvas.drawCircle(
      center,
      radius * 0.15,
      Paint()..color = baseColor.darken(0.1),
    );
  }

  void _drawText(Canvas canvas, Color baseColor, Size size, String text) {
    final textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: TextStyle(
          color: baseColor.withOpacity(0.9),
          fontSize: size.height * 0.15,
          fontWeight: FontWeight.bold,
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    textPainter.paint(canvas, Offset(size.width * 0.05, size.height * 0.4));
  }

  void _drawPCIEConnector(
      Canvas canvas, Size size, Color baseColor, Offset lightSource) {
    final rect = RRect.fromRectAndRadius(
      Rect.fromLTWH(0, size.height * 0.9, size.width * 0.7, size.height * 0.1),
      Radius.circular(size.height * 0.02),
    );

    canvas.drawRRect(rect, Paint()..color = baseColor.brighten(0.1));
    canvas.drawRRect(
      rect.shift(Offset(size.width * 0.005, size.height * 0.005)),
      Paint()..color = baseColor.darken(0.1),
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

extension ColorExtension on Color {
  Color brighten(double amount) {
    return Color.fromARGB(
      alpha,
      (red + (255 - red) * amount).round(),
      (green + (255 - green) * amount).round(),
      (blue + (255 - blue) * amount).round(),
    );
  }

  Color darken(double amount) {
    return Color.fromARGB(
      alpha,
      (red * (1 - amount)).round(),
      (green * (1 - amount)).round(),
      (blue * (1 - amount)).round(),
    );
  }
}
