import 'package:flutter/material.dart';
//
import 'package:newsapp/pages/news_detail_page.dart';
import 'package:newsapp/pages/home.dart';

class RouteHandler {
  static const homePage = '/';
  static const newsDetailPage = '/news_detail_page';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    String extractArgument = settings.arguments.toString();

    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: ((context) => const HomePage()),
        );
      case newsDetailPage:
        return MaterialPageRoute(
          builder: ((context) => NewsDetailPage(
                newsImageUrl: extractArgument,
              )),
        );
      default:
        throw const FormatException('Page not found!');
    }
  }
}
