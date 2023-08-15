import 'package:flutter/material.dart';
import 'package:language_learning_app/screens/Family_page.dart';
import 'package:language_learning_app/screens/Phrases_page.dart';

import '../components/category_item.dart';
import 'Colors_page.dart';
import 'Numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xfffef6db),
        appBar: AppBar(
          backgroundColor: const Color(0xff46322b),
          title: const Text('Toku'),
        ),
        body: Column(
          children: [
            Category(
              text: 'Numbers',
              color: const Color(0xffef9235),
              onTap: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NumbersPage()
                        // (context){return NumbersPage();}
                        ));
              }),
            ),
            Category(
              onTap: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FamilyMemberPage(),
                    ));
              }),
              text: 'Family Members',
              color: const Color(0xff5d8b3b),
            ),
            Category(
              onTap: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ColorsPage(),
                    ));
              }),
              text: 'Colors',
              color: const Color(0xff854cae),
            ),
            Category(
              onTap: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PhrasesPage(),
                    ));
              }),
              text: 'Phrases',
              color: const Color(0xff51b0d5),
            ),
          ],
        ),
      ),
    );
  }
}
