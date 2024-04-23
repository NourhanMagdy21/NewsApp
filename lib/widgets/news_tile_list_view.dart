import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_application/services/news_service.dart';
import '../models/article_model.dart';
import 'news_tile.dart';

class NewsTileListView extends StatefulWidget {
  const NewsTileListView({super.key});

  @override
  State<NewsTileListView> createState() => _NewsTileListViewState();
}

class _NewsTileListViewState extends State<NewsTileListView> {
  List<ArticleModel> articles = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(Dio()).getGeneralNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
        : SliverList(
            delegate: SliverChildBuilderDelegate(childCount: articles.length,
                (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: NewsTile(
                articleModel: articles[index],
              ),
            );
          }));
  }
}
