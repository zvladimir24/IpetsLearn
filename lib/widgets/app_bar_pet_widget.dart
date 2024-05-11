import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ipets_learn/bloc/learn_bloc.dart';
import 'package:ipets_learn/models/pet_content.dart';
import 'package:ipets_learn/style/theme.dart';

class AppBarPetWidget extends StatelessWidget {
  final List<PetContent> listOfPetContentItems;
  final int selectedIndex;
  const AppBarPetWidget(
      {super.key,
      required this.listOfPetContentItems,
      required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    final PetContent selectedPetContent = listOfPetContentItems[selectedIndex];
    return SliverAppBar(
      elevation: 0,
      pinned: false,
      expandedHeight: 402,
      title: Padding(
        padding: const EdgeInsets.only(top: 35),
        child: Text('Learn', style: MyAppTheme.headline1),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(right: 12, top: 46),
            child: SizedBox(
              width: 20,
              height: 20,
              child: SvgPicture.asset('assets/svg/ic_search.svg'),
            ),
          ),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: selectedPetContent.imageUrl != null
            ? Image(
                image: AssetImage(selectedPetContent.imageUrl!),
                fit: BoxFit.cover,
              )
            : Container(),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(selectedPetContent.title ?? ''),
              ],
            ),
            Row(
              children: [
                Text('${selectedPetContent.readTime} min read'),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 54),
                  child: ElevatedButton(
                    onPressed: () {
                      final event = NavToPetContentScreenEvent(
                        selectedPetContent.content ?? '',
                        selectedPetContent.imageUrl!,
                        selectedPetContent.readTime ?? 0,
                        selectedPetContent.title ?? '',
                      );
                      BlocProvider.of<LearnBloc>(context).add(event);
                    },
                    child: const Text('Read more'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
