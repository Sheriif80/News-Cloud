import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class CategoryPage extends StatelessWidget {
  final String categoryName;
  const CategoryPage({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(categoryName)),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [NewsListViewBuilder(categoryName: categoryName)],
        ),
      ),
    );
  }
}
