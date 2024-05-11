import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ipets_learn/bloc/learn_bloc.dart';
import 'package:ipets_learn/models/pet_content.dart';
import 'package:ipets_learn/screens/learn_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<PetContent> listOfPetContentItems = [
      PetContent(
        articleType: 'All',
      ),
      PetContent(
        imageUrl: 'assets/png/pet_content_img1.png',
        articleType: 'Breed Spotlight',
        title: 'Tips for Dogs Living the Indoor Life',
        readTime: 4,
        content:
            "Vrednost BMI pokazuje da imate premalo kilograma. Trebalo bi da se konsultujete sa lekarom oko toga koliko treba da se ugojite, jer mala kilaža može da utiče na imunitet. Što je manja vrednost BMI, veći je rizik od nastanka bolesti usled pada imuniteta, dolazi do gubljenja gustine kostiju, pothranjenosti i sl. Najbolji način da se ugojite je da povećate unos kalorija i da svakodnevno vežbate kako biste dobili i na mišićnoj masi.",
      ),
      PetContent(
        imageUrl: 'assets/png/pet_content_img2.png',
        articleType: 'Breed Spotlight',
        title: 'Owning Dogs and Cats Harmoniously',
        readTime: 5,
        content:
            "Vrednost BMI pokazuje da imate premalo kilograma. Trebalo bi da se konsultujete sa lekarom oko toga koliko treba da se ugojite, jer mala kilaža može da utiče na imunitet. Što je manja vrednost BMI, veći je rizik od nastanka bolesti usled pada imuniteta, dolazi do gubljenja gustine kostiju, pothranjenosti i sl. Najbolji način da se ugojite je da povećate unos kalorija i da svakodnevno vežbate kako biste dobili i na mišićnoj masi.",
      ),
      PetContent(
        imageUrl: 'assets/png/pet_content_img1.png',
        articleType: 'Breed Spotlight',
        title: 'Having Multiple Dogs',
        readTime: 7,
        content:
            "Vrednost BMI pokazuje da imate premalo kilograma. Trebalo bi da se konsultujete sa lekarom oko toga koliko treba da se ugojite, jer mala kilaža može da utiče na imunitet. Što je manja vrednost BMI, veći je rizik od nastanka bolesti usled pada imuniteta, dolazi do gubljenja gustine kostiju, pothranjenosti i sl. Najbolji način da se ugojite je da povećate unos kalorija i da svakodnevno vežbate kako biste dobili i na mišićnoj masi.",
      ),
      PetContent(
        imageUrl: 'assets/png/pet_content_img2.png',
        articleType: 'Dog Food',
        title: 'Outdoor Cats',
        readTime: 3,
        content:
            "Vrednost BMI pokazuje da imate premalo kilograma. Trebalo bi da se konsultujete sa lekarom oko toga koliko treba da se ugojite, jer mala kilaža može da utiče na imunitet. Što je manja vrednost BMI, veći je rizik od nastanka bolesti usled pada imuniteta, dolazi do gubljenja gustine kostiju, pothranjenosti i sl. Najbolji način da se ugojite je da povećate unos kalorija i da svakodnevno vežbate kako biste dobili i na mišićnoj masi.",
      ),
      PetContent(
        imageUrl: 'assets/png/cat_app_bar.png',
        articleType: 'Turtule Food',
        title: 'Having Multiple dogs',
        readTime: 4,
        content:
            "Vrednost BMI pokazuje da imate premalo kilograma. Trebalo bi da se konsultujete sa lekarom oko toga koliko treba da se ugojite, jer mala kilaža može da utiče na imunitet. Što je manja vrednost BMI, veći je rizik od nastanka bolesti usled pada imuniteta, dolazi do gubljenja gustine kostiju, pothranjenosti i sl. Najbolji način da se ugojite je da povećate unos kalorija i da svakodnevno vežbate kako biste dobili i na mišićnoj masi.",
      ),
      PetContent(
        imageUrl: 'assets/png/pet_content_img1.png',
        articleType: 'Dogs And Cats',
        title: 'Tips for turtles',
        readTime: 4,
        content:
            "Vrednost BMI pokazuje da imate premalo kilograma. Trebalo bi da se konsultujete sa lekarom oko toga koliko treba da se ugojite, jer mala kilaža može da utiče na imunitet. Što je manja vrednost BMI, veći je rizik od nastanka bolesti usled pada imuniteta, dolazi do gubljenja gustine kostiju, pothranjenosti i sl. Najbolji način da se ugojite je da povećate unos kalorija i da svakodnevno vežbate kako biste dobili i na mišićnoj masi.",
      ),
    ];
    return BlocProvider(
      create: (context) => LearnBloc(listOfPetContentItems),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: LearnScreen(listOfPetContentItems: listOfPetContentItems),
      ),
    );
  }
}
