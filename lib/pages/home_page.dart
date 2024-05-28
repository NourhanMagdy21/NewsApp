import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_application/widgets/categories_list_view.dart';
import '../widgets/news_list_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),
            ),
            Text(
              "Cloud",
              style: TextStyle(color: Colors.yellow, fontSize: 22),
            )
          ],
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            NewsListViewBuilder(category: 'general',),
          ])),
    );
  }
}

