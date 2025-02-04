import 'package:flutter/material.dart';
import 'package:speak_ai/util/custom_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardTitle extends StatelessWidget {
  final String iconPath;
  final String title;
  const CardTitle({
    super.key,
    required this.iconPath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        child: ListTile(
          leading: SvgPicture.asset(
            iconPath,
            width: 30,
            height: 30,
            fit: BoxFit.cover,
          ),
          title: CustomText(
            text: title,
            fontSize: 18,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w600,
          ),
          trailing: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(8),
                backgroundColor: Colors.blue,
              ),
              child: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.black,
              )),
        ),
      ),
    );
  }
}
