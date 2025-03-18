import 'package:flutter/material.dart';
import 'package:speak_ai/util/colors.dart';

class TypeGame extends StatelessWidget {
  final String iconPath;
  final double size;
  final int colorIndex;
  final String title;
  final VoidCallback? onTap;

  const TypeGame({
    Key? key,
    required this.iconPath,
    required this.title,
    this.size = 65,
    this.colorIndex = 0,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(10),
          child: Column(
            children: [
              Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                  color: AppColors.getCourseCardColor(colorIndex),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Image.asset(
                    iconPath,
                    width: size * 0.70,
                    height: size * 0.70,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: size,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
