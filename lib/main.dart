import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_application/pages/home_page.dart';
import 'package:news_application/services/news_service.dart';

void main() {
  NewsService(Dio()).getGeneralNews();
  runApp(const NewsApp());
}


class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}