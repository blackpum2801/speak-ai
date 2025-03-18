import 'package:flutter/material.dart';
import 'package:speak_ai/util/custom_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardTitleExpect extends StatelessWidget {
  final String iconPath;
  final String title;
  final String subtitle;
  const CardTitleExpect({
    super.key,
    required this.iconPath,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Row(
            children: [
              /// Icon SVG bên trái (leading)
              SvgPicture.asset(
                iconPath,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),

              /// Khoảng cách giữa icon và text
              const SizedBox(width: 12),

              /// Phần chứa title và subtitle chiếm nhiều diện tích hơn
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: title,
                      fontSize: 16,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w600,
                    ),
                    CustomText(
                      text: subtitle,
                      fontSize: 13,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ),

              /// Icon mũi tên bên phải (trailing)
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.keyboard_arrow_right_outlined,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
