part of 'learn_bloc.dart';

@immutable
sealed class LearnState {}

final class LearnInitial extends LearnState {}

final class ArticleTypeTappedState extends LearnState {
  final List<PetContent> filteredPetContentList;
  ArticleTypeTappedState({required this.filteredPetContentList});
}

final class NavToPetContentScreenState extends LearnState {}
