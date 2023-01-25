import 'package:flutter/material.dart';
//
import 'package:google_fonts/google_fonts.dart';
//
import 'package:newsapp/utils/images_url.dart';
import 'package:newsapp/utils/news_text.dart';

class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({super.key, required this.newsImageUrl});

  final String newsImageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'أكسفورد إكونومكس',
        ),
        leadingWidth: 30,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: newsImageUrl,
              child: Container(
                height: 280,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(newsImageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 25),
              decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18))),
              child: Column(
                children: [
                  const Text(
                    'أكسفورد إكونومكس\n التضخم سيتراجع بشكل حاد في الدول المتقدمة خلال 2023',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 5),
                  ListTile(
                    minLeadingWidth: 0,
                    leading: Container(
                      width: 3,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black,
                            Colors.black,
                            Colors.green,
                            Colors.green,
                            Colors.red[900] as Color,
                            Colors.red[900] as Color,
                          ],
                        ),
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(editorCircleAvatar),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'امل حجازي',
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              '٢٨  مارس ٢٠٢٢',
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                    trailing: TextButton(
                      onPressed: () {},
                      child: const Text('تابعونا',
                          style: TextStyle(
                            color: Colors.blue,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          mainNewsText,
                          style: GoogleFonts.notoKufiArabic(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
