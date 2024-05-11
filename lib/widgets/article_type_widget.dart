import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ipets_learn/bloc/learn_bloc.dart';

class ArticleTypeWidget extends StatelessWidget {
  const ArticleTypeWidget({super.key, required this.articleType});

  final String articleType;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<LearnBloc>(context)
            .add(ArticleTypeTappedEvent(articleType));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue,
        ),
        child: Text(
          articleType,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
