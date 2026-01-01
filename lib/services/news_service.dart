import 'package:dio/dio.dart';
import 'package:news_app/models/news_model.dart';

class NewsService {
  final Dio dio;
  String apiKey = 'e92aba9abd35402086be5a79cb51b4e1';

  NewsService(this.dio);

  Future<List<NewsModel>> getNews({required String category}) async {
    try {
      final Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=$apiKey&category=$category',
      );
      final Map<String, dynamic> jsonData = response.data;

      final List<dynamic> articles = jsonData['articles'];

      final List<NewsModel> newsList = [];

      // Here, I'll be using the factory constructor thst I made in the news model.

      for (var article in articles) {
        final NewsModel newsModel = NewsModel.fromJson(article);
        newsList.add(newsModel);
      }

      return newsList;
    } catch (e) {
      return [];
    }
  }
}




// If i'm using it without factory constructor :

/*


for (var article in articles) {
        newsList.add(
          NewsModel(
            image:
                article['urlToImage'] ??
                'https://picsum.photos/seed/picsum/200/300',
            title: article['title'] ?? "No title",
            subTitle: article['description'] ?? "No description",
            url: article['url'] ?? "google.com",
          ),
        );
      }


      */