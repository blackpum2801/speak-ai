import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:speak_ai/features/learn/widgets/card_category.dart';
import 'package:speak_ai/features/learn/widgets/card_community.dart';
import 'package:speak_ai/features/learn/widgets/card_item.dart';
import 'package:speak_ai/features/learn/widgets/card_recommend.dart';
import 'package:speak_ai/util/assets.dart';
import 'package:speak_ai/util/colors.dart';
import 'package:speak_ai/util/custom_text.dart';

class PageTwoScreen extends StatefulWidget {
  const PageTwoScreen({Key? key}) : super(key: key);

  @override
  _PageTwoScreenState createState() => _PageTwoScreenState();
}

class _PageTwoScreenState extends State<PageTwoScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(viewportFraction: 0.85);
  final List<Map<String, String>> categories = [
    {
      'title': 'Bài học',
      'imagePath': AppAssets.lesson,
    },
    {
      'title': 'Chủ đề',
      'imagePath': AppAssets.topic,
    },
  ];

  final List<CardItem> sampleCards = [
    const CardItem(
      logoPath: AppAssets.elsaLogo,
      title: 'Tiêu đề 1',
      description: 'Mô tả ngắn gọn về nội dung thẻ 3',
      imagePath: AppAssets.conversation1,
    ),
    const CardItem(
      logoPath: AppAssets.elsaLogo,
      title: 'Tiêu đề 2',
      description: 'Mô tả ngắn gọn về nội dung thẻ 2',
      imagePath: AppAssets.conversation1,
    ),
  ];

  final List<Map<String, dynamic>> sampleData = [
    {
      'logo': AppAssets.ieltsLogo,
      'title': 'Bài học 1',
      'author': 'Tác giả 1',
      'vocabulary': '10',
      'likes': 100,
      'backgroundColor': AppColors.getCourseCardColor(0),
    },
    {
      'logo': AppAssets.ieltsLogo,
      'title': 'Bài học 2',
      'author': 'Tác giả 2',
      'vocabulary': '20',
      'likes': 200,
      'backgroundColor': AppColors.getCourseCardColor(1),
    },
    {
      'logo': AppAssets.ieltsLogo,
      'title': 'Bài học 3',
      'author': 'Tác giả 3',
      'vocabulary': '20',
      'likes': 200,
      'backgroundColor': AppColors.getCourseCardColor(3),
    },
    {
      'logo': AppAssets.ieltsLogo,
      'title': 'Bài học 4',
      'author': 'Tác giả 4',
      'vocabulary': '20',
      'likes': 200,
      'backgroundColor': AppColors.getCourseCardColor(4),
    },
    {
      'logo': AppAssets.ieltsLogo,
      'title': 'Bài học 5',
      'author': 'Tác giả 5',
      'vocabulary': '20',
      'likes': 200,
      'backgroundColor': AppColors.getCourseCardColor(5),
    },
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 20,
                children: categories
                    .map(
                      (item) => Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: InkWell(
                          onTap: () {}, // Có thể thêm logic khi nhấn
                          child: CategoryCard(
                            title: item['title']!,
                            imagePath: item['imagePath']!,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            const SizedBox(height: 10),
            const Divider(
              color: Colors.grey,
              thickness: 1,
              height: 20,
              indent: 18,
              endIndent: 18,
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: InkWell(
                onTap: () {},
                child: PageView.builder(
                  itemCount: sampleCards.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return sampleCards[index];
                  },
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: DotsIndicator(
                dotsCount: sampleCards.length,
                position: _currentPage.toDouble(),
                decorator: const DotsDecorator(
                  color: Colors.white, // Inactive color
                  activeColor: Colors.redAccent,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    text: "Gợi ý cho bạn",
                    fontFamily: 'OpenSans',
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                  const CustomText(
                    text: "Tập trung các kỹ năng này để cải thiện nhanh nhất",
                    fontFamily: 'OpenSans',
                    fontSize: 16,
                    color: Color.fromARGB(255, 212, 210, 210),
                    fontWeight: FontWeight.w500,
                  ),
                  const SizedBox(height: 10),
                  CustomCard(
                    onTap: () {
                      print("Clicked Tiếng Anh");
                    },
                    svgPath: AppAssets.hanhtinh1,
                    title: 'Tiếng Anh',
                    currentLessons: 10,
                    totalLessons: 38,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const CustomText(
                        text: "Học phần đã được tuyển chọn",
                        fontFamily: 'OpenSans',
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          print("Clicked Xem tất cả");
                        },
                        child: const CustomText(
                          text: "Xem tất cả",
                          fontFamily: 'OpenSans',
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const CustomText(
                    text:
                        "Học các học phần phổ biến nhất từ cộng đồng Speak Up",
                    fontFamily: 'OpenSans',
                    fontSize: 16,
                    color: Color.fromARGB(255, 212, 210, 210),
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 260,
              child: Padding(
                padding: const EdgeInsets.only(left: 4),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: sampleData.length,
                  itemBuilder: (context, index) {
                    final data = sampleData[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: CardCommunity(
                        logo: data['logo'],
                        title: data['title'],
                        author: data['author'],
                        vocabulary: data['vocabulary'],
                        likes: data['likes'],
                        backgroundColor: data['backgroundColor'],
                        onTap: () {
                          print("Clicked ${data['title']}");
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
