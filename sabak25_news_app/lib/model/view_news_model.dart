import 'package:sabak25_news_app/model/article.dart';

class TopNews {
  TopNews(
      {required this.status,
      required this.totalresults,
      required this.article});
  final String status;
  final int totalresults;
  final Article article;
}



