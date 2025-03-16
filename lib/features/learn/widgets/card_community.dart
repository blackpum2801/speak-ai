import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardCommunity extends StatelessWidget {
  // Card properties
  final String logo;
  final String title;
  final String author;
  final String vocabulary;
  final int likes;
  final Color backgroundColor;
  final double width;
  final double height;
  final VoidCallback? onTap;
  const CardCommunity({
    Key? key,
    required this.logo,
    required this.title,
    required this.author,
    required this.vocabulary,
    required this.likes,
    required this.backgroundColor,
    this.width = 260,
    this.height = 260,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(28),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo or Image
              CircleAvatar(
                backgroundColor: Colors.white,
                maxRadius: 35,
                minRadius: 35,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(logo, width: 30, height: 30),
                ),
              ),
              const SizedBox(height: 12),

              // Title
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),

              // Author
              Text(
                'by $author',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              const SizedBox(height: 12),
              // Vocabulary
              Text(
                'Từ vựng: $vocabulary',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 12),
              // Likes
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.favorite_border,
                      color: Colors.white, size: 20),
                  const SizedBox(width: 6),
                  Text(
                    '$likes',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
