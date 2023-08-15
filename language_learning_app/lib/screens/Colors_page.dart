import 'package:flutter/material.dart';

import '../components/ListItem.dart';
import '../models/Item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Item> familyMember = const [
    Item(
      enName: 'black',
      image: 'assets/images/colors/color_black.png',
      jpName: 'Burakku',
      sound: 'assets/sounds/colors/black.wav',
    ),
    Item(
      enName: 'brown',
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      sound: 'assets/sounds/colors/brown.wav',
    ),
    Item(
      enName: 'gray',
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Gure',
      sound: 'assets/sounds/colors/gray.wav',
    ),
    Item(
      enName: 'green',
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      sound: 'assets/sounds/colors/green.wav',
    ),
    Item(
      enName: 'red',
      image: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      sound: 'assets/sounds/colors/red.wav',
    ),
    Item(
      enName: 'white',
      image: 'assets/images/colors/color_white.png',
      jpName: 'Shiroi',
      sound: 'assets/sounds/colors/white.wav',
    ),
    Item(
      enName: 'yellow',
      image: 'assets/images/colors/yellow.png',
      jpName: 'Kiiro',
      sound: 'assets/sounds/colors/yellow.wav',
    ),
    Item(
      enName: 'dusty yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Hikori ppoi kiiro',
      sound: 'assets/sounds/colors/dusty yellow.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Family Members'),
          backgroundColor: const Color(0xff46322b),
        ),
        body: ListView.builder(
          itemCount: familyMember.length,
          itemBuilder: ((context, index) {
            print(index);
            return ListItem(
              item: familyMember[index],
              color: const Color(0xff854cae),
              itemType: 'colors',
            );
          }),
        ));
  }
}
