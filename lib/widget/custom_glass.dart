import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:smart_home/common/style.dart';

class CustomGlass extends StatelessWidget {
  final double thisWidth;
  final double thisHeight;
  final double thisRadius;
  final Widget thisChild;

  const CustomGlass({
    super.key,
    required this.thisWidth,
    required this.thisHeight,
    required this.thisRadius,
    required this.thisChild,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(thisRadius),
      child: Container(
        width: thisWidth,
        height: thisHeight,
        color: Colors.transparent,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 4,
                sigmaY: 4,
              ),
              child: Container(),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(thisRadius),
                border: Border.all(
                  color: whiteColor.withOpacity(0.25),
                ),
                gradient: LinearGradient(
                  colors: [
                    blueColor.withOpacity(0.4),
                    whiteColor.withOpacity(0.05),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            Center(
              child: thisChild,
            ),
          ],
        ),
      ),
    );
  }
}
