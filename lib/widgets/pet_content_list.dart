import 'package:flutter/material.dart';
import 'package:ipets_learn/models/pet_content.dart';
import 'package:ipets_learn/widgets/pet_content_widget.dart';

class PetContentList extends StatelessWidget {
  const PetContentList({super.key, required this.listOfPetContentItems});

  final List<PetContent> listOfPetContentItems;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: listOfPetContentItems.length,
        itemBuilder: (context, index) {
          PetContent petContent = listOfPetContentItems[index];
          if (petContent.title == null &&
              petContent.content == null &&
              petContent.imageUrl == null) {
            return Container();
          } else {
            return PetContentWidget(
              title: petContent.title,
              content: petContent.content,
              readTime: petContent.readTime,
              imageUrl: petContent.imageUrl,
            );
          }
        },
      ),
    );
  }
}
