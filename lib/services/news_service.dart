import 'package:dio/dio.dart';
import 'package:news_application/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getGeneralNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=f882c2b8a234430f88150300d5c3723d&category=general');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articlesList = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description']);
      articlesList.add(articleModel);
    }
    return articlesList;
  }
}
