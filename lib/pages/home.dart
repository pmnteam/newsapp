import 'package:flutter/material.dart';
//
import 'package:marquee/marquee.dart';
//
import 'package:newsapp/route_handler/routes_handler.dart';
import 'package:newsapp/utils/images_url.dart';
import 'package:newsapp/widgets/news_catogories.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text('الاخبار'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " خبر عاجل",
                    style: TextStyle(
                        color:
                            Theme.of(context).tabBarTheme.unselectedLabelColor),
                  ),
                  SizedBox(
                    height: 50,
                    width: 280,
                    child: Marquee(
                      text:
                          'موقع تويتر يعود للخدمة بعد انقطاع أثر على آلاف المستخدمين آلاف المستخدمين',
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Theme.of(context).tabBarTheme.unselectedLabelColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    MainNewsHeader(
                      url: imgUrls[0],
                    ),
                    MainNewsHeader(
                      url: imgUrls[1],
                    ),
                    MainNewsHeader(
                      url: imgUrls[2],
                    ),
                    MainNewsHeader(
                      url: imgUrls[3],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              TabBar(
                indicatorColor: Theme.of(context).colorScheme.onSurfaceVariant,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: const [
                  Tab(text: 'محليه'),
                  Tab(text: 'تكنولوجيا'),
                  Tab(text: 'مقالات'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          CategoryNewsCardWidget(
                              imgURL: imgUrls[0],
                              color: Theme.of(context).colorScheme.onTertiary),
                          CategoryNewsCardWidget(
                              imgURL: imgUrls[1],
                              color: Theme.of(context).colorScheme.onTertiary),
                          CategoryNewsCardWidget(
                              imgURL: imgUrls[2],
                              color: Theme.of(context).colorScheme.onTertiary),
                          CategoryNewsCardWidget(
                              imgURL: imgUrls[3],
                              color: Theme.of(context).colorScheme.onTertiary),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CategoryNewsCardWidget(
                              imgURL: imgUrls[0],
                              color: const Color(0xFF36454F)),
                          CategoryNewsCardWidget(
                              imgURL: imgUrls[1],
                              color: const Color(0xFF36454F)),
                          CategoryNewsCardWidget(
                              imgURL: imgUrls[2],
                              color: const Color(0xFF36454F)),
                          CategoryNewsCardWidget(
                              imgURL: imgUrls[3],
                              color: const Color(0xFF36454F)),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          CategoryNewsCardWidget(
                            imgURL: imgUrls[0],
                            color: const Color(0xFF134035),
                          ),
                          CategoryNewsCardWidget(
                              imgURL: imgUrls[1],
                              color: const Color(0xFF134035)),
                          CategoryNewsCardWidget(
                            imgURL: imgUrls[2],
                            color: const Color(0xFF134035),
                          ),
                          CategoryNewsCardWidget(
                            imgURL: imgUrls[3],
                            color: const Color(0xFF134035),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MainNewsHeader extends StatelessWidget {
  const MainNewsHeader({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(RouteHandler.newsDetailPage, arguments: url);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Stack(
            children: [
              Hero(
                tag: url,
                child: Container(
                  width: 260,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(url),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 15,
                child: Icon(
                  Icons.favorite_border_outlined,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 50,
                  width: 260,
                  padding: const EdgeInsets.only(right: 8, left: 8),
                  color: Theme.of(context)
                      .colorScheme
                      .surfaceVariant
                      .withOpacity(0.65),
                  child: const Text(
                    'موقع تويتر يعود للخدمة بعد انقطاع أثر على آلاف المستخدمين آلاف المستخدمين',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
