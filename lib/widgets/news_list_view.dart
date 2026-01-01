import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';

import 'package:news_app/widgets/news_item.dart';

class NewsListView extends StatelessWidget {
  final List<NewsModel> newsList;
  const NewsListView({super.key, required this.newsList});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: newsList.length, (
        context,
        index,
      ) {
        return NewsItem(newsModel: newsList[index]);
      }),
    );
  }
}

/*
ListView.builder(
        padding: EdgeInsets.only(left: 8, right: 8),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 7,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsItem(),
          );
        },
      ),

      */
