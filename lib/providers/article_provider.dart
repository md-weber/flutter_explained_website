import 'package:flutter_explained_website/providers/models/article.dart';
import 'package:storyblok_client/storyblok_client.dart';

class ArticleProvider {
  Future<List<Article>> getArticles() async {
    const token = "VwxeTPDvYJLpQ7VtLlmxUQtt";
    final storyblok =
        StoryblokClient(token: token, autoCacheInvalidation: true);

    Map<String, dynamic> json =
        await storyblok.fetchMultiple(startsWith: "article");

    print(json);

    return null;
  }
}
