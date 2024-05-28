
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/article_model.dart';
import 'news_tile.dart';

class NewsTileListView extends StatelessWidget {
  final List<ArticleModel> articles;

const NewsTileListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
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
