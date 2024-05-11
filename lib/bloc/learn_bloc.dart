import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ipets_learn/models/pet_content.dart';
import 'package:ipets_learn/screens/pet_content_screen.dart';

part 'learn_event.dart';
part 'learn_state.dart';

class LearnBloc extends Bloc<LearnEvent, LearnState> {
  final List<PetContent> listOfPetContentItems;

  LearnBloc(this.listOfPetContentItems) : super(LearnInitial()) {
    on<ArticleTypeTappedEvent>(
        (event, emitter) => _handleArticleTypeTapps(event, emitter));

    on<NavToPetContentScreenEvent>(
        (event, emitter) => _handleNavToPetContent(event, emitter));
  }

  Future<void> _handleArticleTypeTapps(
      ArticleTypeTappedEvent event, Emitter<LearnState> emitter) async {
    if (event.articleType == 'All') {
      emitter(LearnInitial());
    } else {
      final filteredList = listOfPetContentItems
          .where((petContent) => petContent.articleType == event.articleType)
          .toList();

      emitter(ArticleTypeTappedState(filteredPetContentList: filteredList));
    }
  }

  Future<void> _handleNavToPetContent(
      NavToPetContentScreenEvent event, Emitter<LearnState> emitter) async {
    final String imageUrl = event.imageUrl;
    final String title = event.title;
    final int readTime = event.readTime;
    final String content = event.content;

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PetContentScreen(
          imageUrl: imageUrl,
          title: title,
          readTime: readTime,
          content: content,
        ),
      ),
    );
  }
}
