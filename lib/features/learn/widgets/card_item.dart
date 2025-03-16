import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:speak_ai/util/custom_text.dart';

class CardItem extends StatelessWidget {
  final String logoPath;
  final String title;
  final String description;
  final String imagePath;

  const CardItem(
      {Key? key,
      required this.logoPath,
      required this.title,
      required this.description,
      required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(logoPath, width: 30, height: 30),
                  const SizedBox(height: 5),
                  CustomText(
                      text: title,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: "OpenSans"),
                  CustomText(
                    text: description,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: "OpenSans",
                    maxLines: 2,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                height: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
