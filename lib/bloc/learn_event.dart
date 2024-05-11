part of 'learn_bloc.dart';

@immutable
sealed class LearnEvent {}

final class ArticleTypeTappedEvent extends LearnEvent {
  final String articleType;

  ArticleTypeTappedEvent(this.articleType);
}

final class NavToPetContentScreenEvent extends LearnEvent {
  final String imageUrl;
  final String title;
  final int readTime;
  final String content;
  NavToPetContentScreenEvent(
      this.content, this.imageUrl, this.readTime, this.title);
}
