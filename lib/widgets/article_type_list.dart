import 'package:flutter/material.dart';
import 'package:ipets_learn/models/pet_content.dart';
import 'package:ipets_learn/widgets/article_type_widget.dart';

class ArticleTypeList extends StatelessWidget {
  const ArticleTypeList({super.key, required this.listOfPetContentItems});

  final List<PetContent> listOfPetContentItems;

  @override
  Widget build(BuildContext context) {
    Set<String> uniqueArticleTypes = <String>{};
    return SizedBox(
      height: 44,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: listOfPetContentItems.length,
        itemBuilder: (context, index) {
          String articleType = listOfPetContentItems[index].articleType;
          if (!uniqueArticleTypes.contains(articleType)) {
            uniqueArticleTypes.add(articleType);
            return ArticleTypeWidget(articleType: articleType);
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
