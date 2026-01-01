import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/circular_loading.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.categoryName});
  final String categoryName;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var futureNews;
  @override
  void initState() {
    futureNews = NewsService(Dio()).getNews(category: widget.categoryName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
      future: futureNews,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(newsList: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Center(child: Text('Oops, there was an error :(( ')),
          );
        } else {
          return const CircularLoading();
        }
      },
    );
  }
}

//  If i'm using StatefulWidget and some normal widgets instead of
//  using the FutureBuilder widger, next code will be used :


/*


  @override
  void initState() {
    getNews();
    super.initState();
  }

  Future<void> getNews() async {
    newsList = await NewsService(Dio()).getSportsNews();
    isLoading = false;
    setState(() {});
  }






*/



/*

// These are the widgets returned


isLoading
        ? CircularLoading()
        : newsList.isNotEmpty
        ? NewsListView(newsList: newsList)
        : SliverToBoxAdapter(
            child: Center(child: Text('Oops, there was an error :(( ')),
          )


          */