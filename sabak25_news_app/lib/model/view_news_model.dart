class TopNews {
  TopNews(
      {required this.status,
      required this.totalresults,
      required this.article});
  final String status;
  final int totalresults;
  final Article article;
}

class Article {
  Article(
      {required this.source,
      this.author,
      required this.title,
      required this.description,
      required this.url,
      this.urlToImage,
      required this.publishedAt,
      required this.content});
  final Source source;
  final String? author;
  final String title;
  final String description;
  final String url;
  final String? urlToImage;
  final String publishedAt;
  final String content;
}

class Source {
  Source({required this.id, required this.name});
  final String id;
  final String name;
}
