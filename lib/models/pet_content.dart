class PetContent {
  final String? title;
  final String? content;
  final String? imageUrl;
  final int? readTime;
  final String articleType;

  PetContent(
      {this.title,
      this.content,
      this.imageUrl,
      this.readTime,
      required this.articleType});
}
