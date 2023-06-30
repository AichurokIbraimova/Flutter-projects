import 'package:sabak28_news_app_04/model/article.dart';

class TopNews {
  TopNews(
      {required this.status,
      required this.totalresults,
      required this.article});
  final String status;
  final int totalresults;
  final List<Article> article;
  factory TopNews.fromJson(Map<String, dynamic> json) {
    return TopNews(
        status: json['status'],
        totalresults: json['totalresults'],
        article: List<Article>.from(
            (json['articles']).map((e) => Article.fromJson(e))));
  }
}
