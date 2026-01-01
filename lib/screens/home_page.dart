import 'package:flutter/material.dart';

import 'package:news_app/widgets/category_list_view.dart';

import 'package:news_app/widgets/news_list_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.newspaper),
        centerTitle: true,
        title: const Row(
          mainAxisSize: .min,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.only(left: 8, right: 8),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoryListView()),

            NewsListViewBuilder(categoryName: 'general'),

            // SliverToBoxAdapter(child: NewsListView()),
          ],
        ),
      ),

      /* Padding(
        padding: const EdgeInsets.only(left: 6, right: 6),
        child: Column(children: [CategoryListView(), NewsListView()]),
      ), */
    );
  }
}
