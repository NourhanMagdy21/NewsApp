import 'package:flutter/cupertino.dart';
import 'package:news_application/models/category_model.dart';

import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CategoryModel> categories=  [
      CategoryModel(ImagePath: "assets/images/business.webp", CategoryName: "Business"),
      CategoryModel(ImagePath: "assets/images/general.jpg", CategoryName: "General"),
      CategoryModel(ImagePath: "assets/images/technology.jpg", CategoryName: "Technology"),
      CategoryModel(ImagePath: "assets/images/science.avif", CategoryName: "Science"),
      CategoryModel(ImagePath: "assets/images/environment.jpg", CategoryName: "Environment"),


    ];
    return SizedBox(
      height: 130,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount:categories.length,
          itemBuilder: (context, index)
          {
            return  CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
