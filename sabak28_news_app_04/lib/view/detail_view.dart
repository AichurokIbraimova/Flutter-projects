import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sabak28_news_app_04/model/article.dart';
import 'package:sabak28_news_app_04/theme/app_texts_styles.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key, required this.article});
  final Article article;
  @override
  Widget build(BuildContext context) {
    final newsTime = DateFormat('d MMMM y H:m:s').format(
      DateTime.parse(article.publishedAt),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff153059),
        title: Text(
          article.title,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            DetailTitle(article: article),
            const SizedBox(
              height: 10,
            ),
            const DetailDivider(),
            DetailNewsTime(newsTime: newsTime),
            const SizedBox(
              height: 15,
            ),
            Image.network(article.urlToImage.toString()),
            const SizedBox(
              height: 15,
            ),
            DetailDescription(article: article),
            const DetailSiteButton()
          ],
        ),
      ),
    );
  }
}

class DetailTitle extends StatelessWidget {
  const DetailTitle({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Text(
      article.title,
      textAlign: TextAlign.center,
      style: AppTextStyles.titleTextStyle,
    );
  }
}

class DetailSiteButton extends StatelessWidget {
  const DetailSiteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.deepOrange,
      onPressed: () {},
      child: Text('Сайтын коруу'),
    );
  }
}

class DetailDescription extends StatelessWidget {
  const DetailDescription({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Text(
      article.description,
      textAlign: TextAlign.center,
      style: AppTextStyles.descriptionTextStyle,
    );
  }
}

class DetailNewsTime extends StatelessWidget {
  const DetailNewsTime({
    super.key,
    required this.newsTime,
  });

  final String newsTime;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.access_time),
        const SizedBox(
          width: 10,
        ),
        Text(newsTime),
      ],
    );
  }
}

class DetailDivider extends StatelessWidget {
  const DetailDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.deepOrange,
    );
  }
}
