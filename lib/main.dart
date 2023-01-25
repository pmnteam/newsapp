import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//
import 'package:newsapp/app_themes/color_schemes.dart';
import 'package:newsapp/route_handler/routes_handler.dart';

void main() => runApp(const NewsApp());

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      localizationsDelegates: const [
        ...GlobalMaterialLocalizations.delegates,
      ],
      supportedLocales: const [
        Locale('ar', ''),
      ],
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        canvasColor: const Color(0xFF171719),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: RouteHandler.homePage,
      onGenerateRoute: RouteHandler.generateRoute,
    );
  }
}
