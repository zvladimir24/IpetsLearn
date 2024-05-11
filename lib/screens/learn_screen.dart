import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ipets_learn/bloc/learn_bloc.dart';
import 'package:ipets_learn/models/pet_content.dart';
import 'package:ipets_learn/widgets/app_bar_pet_widget.dart';
import 'package:ipets_learn/widgets/article_type_list.dart';
import 'package:ipets_learn/widgets/pet_content_list.dart';

class LearnScreen extends StatelessWidget {
  final List<PetContent> listOfPetContentItems;
  const LearnScreen({super.key, required this.listOfPetContentItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarPetWidget(
            listOfPetContentItems: listOfPetContentItems,
            selectedIndex: 5,
          ),
          SliverToBoxAdapter(
            child:
                ArticleTypeList(listOfPetContentItems: listOfPetContentItems),
          ),
          BlocBuilder<LearnBloc, LearnState>(builder: (context, state) {
            if (state is ArticleTypeTappedState) {
              return SliverToBoxAdapter(
                child: PetContentList(
                    listOfPetContentItems: state.filteredPetContentList),
              );
            } else {
              return SliverToBoxAdapter(
                child: PetContentList(
                    listOfPetContentItems: listOfPetContentItems),
              );
            }
          }),
        ],
      ),
    );
  }
}
