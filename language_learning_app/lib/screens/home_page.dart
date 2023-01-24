import 'package:flutter/material.dart';
import 'package:language_learning_app/screens/Family_page.dart';
import 'package:language_learning_app/screens/Phrases_page.dart';
import 'Colors_page.dart';
import '../components/category_item.dart';
import 'Numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xfffef6db),
        appBar: AppBar(
          backgroundColor: Color(0xff46322b),
          title: Text('Toku'),
        ),
        body: Column(
          children: [
            Category(
              text: 'Numbers',
              color: Color(0xffef9235),
              onTap: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NumbersPage()
                        // (context){return NumbersPage();}
                        ));
              }),
            ),
            Category(
              onTap: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FamilyMemberPage(),
                    ));
              }),
              text: 'Family Members',
              color: Color(0xff5d8b3b),
            ),
            Category(
              onTap: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ColorsPage(),
                    ));
              }),
              text: 'Colors',
              color: Color(0xff854cae),
            ),
            Category(
              onTap: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PhrasesPage(),
                    ));
              }),
              text: 'Phrases',
              color: Color(0xff51b0d5),
            ),
          ],
        ),
      ),
    );
  }
}
