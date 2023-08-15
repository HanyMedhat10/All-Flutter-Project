import 'package:flutter/material.dart';
import 'package:language_learning_app/components/ListItem.dart';

import '../models/Item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Item> numbers = const [
    Item(
      enName: 'one',
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      sound: 'assets/sounds/numbers/number_one_sound.mp3',
    ),
    Item(
      enName: 'two',
      image: 'assets/images/numbers/number_two.png',
      jpName: 'Ni',
      sound: 'assets/sounds/numbers/number_two_sound.mp3',
    ),
    Item(
      enName: 'three',
      image: 'assets/images/numbers/number_three.png',
      jpName: 'San',
      sound: 'assets/sounds/numbers/number_three_sound.mp3',
    ),
    Item(
      enName: 'four',
      image: 'assets/images/numbers/number_four.png',
      jpName: 'Shi',
      sound: 'assets/sounds/numbers/number_four_sound.mp3',
    ),
    Item(
      enName: 'five',
      image: 'assets/images/numbers/number_five.png',
      jpName: 'Go',
      sound: 'assets/sounds/numbers/number_five_sound.mp3',
    ),
    Item(
      enName: 'six',
      image: 'assets/images/numbers/number_six.png',
      jpName: 'Roku',
      sound: 'assets/sounds/numbers/number_six_sound.mp3',
    ),
    Item(
      enName: 'seven',
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'Sebun',
      sound: 'assets/sounds/numbers/number_seven_sound.mp3',
    ),
    Item(
      enName: 'eight',
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'hachi',
      sound: 'assets/sounds/numbers/number_eight_sound.mp3',
    ),
    Item(
      enName: 'nine',
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'kyuu',
      sound: 'assets/sounds/numbers/number_nine_sound.mp3',
    ),
    Item(
      enName: 'ten',
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'juu',
      sound: 'assets/sounds/numbers/number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Numbers'),
          backgroundColor: const Color(0xff46322b),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: ((context, index) {
            print(index);
            return ListItem(
              item: numbers[index],
              color: const Color(0xffef9235),
              itemType: 'family_members',
            );
          }),
        ));
  }

  // List<Item> getlist (List<Number> numbers) {
  //   List<Item>? itemList = [];
  //   for (var i = 0; i < numbers.length; i++) {
  //     itemList.add(Item(
  //       number: numbers[i],
  //     ));
  //     return itemList;
  //   }
  // }
}
