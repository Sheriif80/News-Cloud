class NewsModel {
  NewsModel({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.url,
  });
  final String image;
  final String title;
  final String? subTitle;
  final String url;

  factory NewsModel.fromJson(json) {
    return NewsModel(
      image: json['urlToImage'] ?? 'https://picsum.photos/seed/picsum/200/300',
      title: json['title'] ?? "No title",
      subTitle: json['description'] ?? "No description",
      url: json['url'] ?? "google.com",
    );
  }
}
