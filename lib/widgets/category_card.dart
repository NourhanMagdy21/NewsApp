import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_application/models/category_model.dart';

class  CategoryCard extends StatelessWidget {
  const  CategoryCard({super.key, required this.category });
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {

    return  Padding(
      padding: const EdgeInsets.only(right:8.0),
      child: Container(
        height: 130,
        width: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(category.ImagePath),
          fit: BoxFit.fill
        ),),

        child: Center(
          child: Text(category.CategoryName, style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
        ),
      ),
    );
  }
}
