import 'package:flutter/material.dart';
import 'package:speak_ai/util/colors.dart';
import 'package:speak_ai/util/custom_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardTitleExpect extends StatelessWidget {
  final String iconPath;
  final Color iconColor;

  final String title;
  final String subtitle;
  const CardTitleExpect({
    super.key,
    required this.iconPath,
    required this.iconColor,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        color: AppColors.secondBackground,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Row(
            children: [
              SvgPicture.asset(
                iconPath,
                width: 30,
                height: 30,
                colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: title,
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w600,
                    ),
                    CustomText(
                      text: subtitle,
                      fontSize: 13,
                      color: const Color.fromARGB(255, 212, 210, 210),
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.keyboard_arrow_right_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
