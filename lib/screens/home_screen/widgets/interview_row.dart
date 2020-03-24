import 'package:flutter/material.dart';
import 'package:flutter_explained_website/providers/article_provider.dart';
import 'package:flutter_explained_website/providers/models/article.dart';

class InterviewRow extends StatelessWidget {
  final ArticleProvider provider = ArticleProvider();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: provider.getArticles(),
      builder: (_, snapshot) => Row(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width / 4,
            height: 150,
            child: Card(
              child: Column(
                children: <Widget>[
                  Text("Hello World"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
