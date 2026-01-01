// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/models/news_model.dart';
// import 'package:news_app/services/news_service.dart';
// import 'package:news_app/widgets/news_item.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({super.key});

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   List<NewsModel> newsList = [];
//   bool isLoading = true;

//   @override
//   void initState() {
//     getNews();
//     super.initState();
//   }

//   Future<void> getNews() async {
//     newsList = await NewsService(Dio()).getSportsNews();
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? SliverFillRemaining(
//             hasScrollBody: false,
//             child: Center(
//               child: Column(
//                 mainAxisSize: .min,
//                 children: [
//                   Center(child: CircularProgressIndicator()),
//                   SizedBox(height: 10),
//                   Text('Please wait....'),
//                 ],
//               ),
//             ),
//           )
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(childCount: newsList.length, (
//               context,
//               index,
//             ) {
//               return NewsItem(newsModel: newsList[index]);
//             }),
//           );
//   }
// }

// /*
// ListView.builder(
//         padding: EdgeInsets.only(left: 8, right: 8),
//         shrinkWrap: true,
//         physics: NeverScrollableScrollPhysics(),
//         itemCount: 7,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.only(bottom: 22),
//             child: NewsItem(),
//           );
//         },
//       ),

//       */
