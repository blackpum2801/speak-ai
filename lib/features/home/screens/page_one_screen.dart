import 'package:flutter/material.dart';
import 'package:speak_ai/features/home/widgets/card_conversations.dart';
import 'package:speak_ai/features/home/widgets/card_title.dart';
import 'package:speak_ai/util/assets.dart';
import 'package:speak_ai/util/colors.dart';
import 'package:speak_ai/util/custom_text.dart';
import 'package:speak_ai/util/icons.dart';

class PageOneScreen extends StatelessWidget {
  const PageOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> conversations = [
      {
        'image': AppAssets.conversation1,
        'title': 'What to put on the altar?',
        'minutes': '5 minutes',
        'tag': 'EASY',
        'tagColor': AppColors.tagEasy,
      },
      {
        'image': AppAssets.conversation2,
        'title': 'How to meditate?',
        'minutes': '10 minutes',
        'tag': 'MEDIUM',
        'tagColor': AppColors.tagMedium,
      },
      {
        'image': AppAssets.conversation3,
        'title': 'Understanding mindfulness',
        'minutes': '15 minutes',
        'tag': 'HARD',
        'tagColor': AppColors.tagHard,
      },
    ];

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Chào mừng bạn đã trở lại',
              fontSize: 15,
              color: Colors.white,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.w700,
            ),
            CustomText(
              text: 'Nguyễn Văn A',
              fontSize: 18,
              color: Colors.white,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
      ),
      // backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Card(
                color: AppColors.secondBackground,
                elevation: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CustomText(
                        text: 'SPEAK FLOW AI Conversations',
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: CustomText(
                        text: "Có 3 Cuộc ĐÀM THOẠI",
                        fontSize: 16,
                        color: Colors.yellowAccent,
                        fontFamily: 'OpenSans',
                      ),
                    ),
                    SizedBox(
                      height: 350,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: conversations.length,
                        itemBuilder: (context, index) {
                          final conversation = conversations[index];
                          return InkWell(
                            onTap: () {},
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CardConVerSation(
                                image: conversation['image'],
                                title: conversation['title'],
                                minutes: conversation['minutes'],
                                tag: conversation['tag'],
                                tagColor: conversation['tagColor'],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Hôm nay, chúng ta nên làm gì?",
                    fontFamily: 'OpenSans',
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(height: 6),
                  CardTitle(
                    iconPath: AppIcons.listHomeWorkIcon,
                    title: "Luyện tập Bài học Hàng ngày",
                    iconColor: Color(0xFFfee159),
                    backgroundElevator: Color(0xFFfee159),
                  ),
                  SizedBox(height: 6),
                  CardTitle(
                    iconPath: AppIcons.waveformIcon,
                    title: "Cải thiện Phát âm",
                    iconColor: Color(0xFF4fcdff),
                    backgroundElevator: Color(0xFF4fcdff),
                  ),
                  SizedBox(height: 6),
                  CardTitle(
                    iconPath: AppIcons.messageIcon,
                    title: "Học theo Chủ đề",
                    iconColor: Color(0xFFff5eff),
                    backgroundElevator: Color(0xFFff5eff),
                  ),
                  SizedBox(height: 6),
                  CardTitle(
                    iconPath: AppIcons.certificateIcon,
                    title: "Nhận được Chứng chỉ",
                    iconColor: Color(0xFFff5e45),
                    backgroundElevator: Color(0xFFff5e45),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
