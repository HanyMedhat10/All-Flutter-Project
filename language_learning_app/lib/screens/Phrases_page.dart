import 'package:flutter/material.dart';
import 'package:language_learning_app/components/ListItem.dart';

import '../models/Phrase.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Phrase> phrase = const [
    Phrase(
        jpName: 'watashi wa programming ga daisuk desu',
        enName: 'i love  programming',
        sound: 'assets/sounds/phrases/i_love_programming.wav'),
    Phrase(
        jpName: 'anime ga daisuk',
        enName: 'i love anime',
        sound: 'assets/sounds/phrases/i_love_anime.wav'),
    Phrase(
        jpName: 'rai masu ka',
        enName: 'are you coming',
        sound: 'assets/sounds/phrases/are_you_coming.wav'),
    //  Phrase(
    //     jpName:'koudoku suru koto wa wasure nai de kudasai',
    //     enName:'do not forget to subscribe',
    //     sound: 'assets/sounds/phrases/dont_forget_to_subscribe.wav'
    //     ),
    Phrase(
        jpName: 'watashi wa programming ga daisuk desu',
        enName: 'how are you feling',
        sound: 'assets/sounds/phrases/how_are_you_feeling.wav'),
    Phrase(
        jpName: 'programming wa kantan',
        enName: 'programming is easy',
        sound: 'assets/sounds/phrases/programming_is_easy.wav'),
    Phrase(
        jpName: 'anata no namae wa nani desu ka',
        enName: 'what is your name',
        sound: 'assets/sounds/phrases/what_is_your_name.wav'),
    Phrase(
        jpName: 'doko ni iki masu ka',
        enName: 'where are you going',
        sound: 'assets/sounds/phrases/where_are_you_going.wav'),
    Phrase(
        jpName: 'hai 、 rai te iya masu',
        enName: 'yes i am coming',
        sound: 'assets/sounds/phrases/yes_im_coming.wav'),
  ];
  //   final List<Item> phrase = const [
  //  Item(
  //   jpName:'watashi wa programming ga daisuk desu',
  //   enName:'i love  programming',
  //   sound: 'assets/sounds/phrases/i_love_programming.wav'
  //     ),
  //   Item(
  //   jpName:'anime ga daisuk',
  //   enName:'i love anime',
  //   sound: 'assets/sounds/phrases/i_love_anime.wav'
  //     ),
  //   Item(
  //     jpName:'rai masu ka',
  //     enName:'are you coming',
  //     sound: 'assets/sounds/phrases/are_you_coming.wav'
  //     ),
  // //  Phrase(
  // //     jpName:'koudoku suru koto wa wasure nai de kudasai',
  // //     enName:'do not forget to subscribe',
  // //     sound: 'assets/sounds/phrases/dont_forget_to_subscribe.wav'
  // //     ),
  //        Item(
  //   jpName:'watashi wa programming ga daisuk desu',
  //   enName:'how are you feling',
  //   sound: 'assets/sounds/phrases/how_are_you_feeling.wav'
  //     ),
  //        Item(
  //   jpName:'programming wa kantan',
  //   enName:'programming is easy',
  //   sound: 'assets/sounds/phrases/programming_is_easy.wav'
  //     ),
  //        Item(
  //   jpName:'anata no namae wa nani desu ka',
  //   enName:'what is your name',
  //   sound: 'assets/sounds/phrases/what_is_your_name.wav'
  //     ),
  //   Item(
  //   jpName:'doko ni iki masu ka',
  //   enName:'where are you going',
  //   sound: 'assets/sounds/phrases/where_are_you_going.wav'
  //     ),
  //   Item(
  //   jpName:'hai 、 rai te iya masu',
  //   enName:'yes i am coming',
  //   sound: 'assets/sounds/phrases/yes_im_coming.wav'
  //     ),

  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Phrases'),
          backgroundColor: const Color(0xff46322b),
        ),
        body: ListView.builder(
          itemCount: phrase.length,
          itemBuilder: ((context, index) {
            print(index);
            return PhrasesItem(
              phraseItem: phrase[index],
              color: const Color(0xff51b0d5),
              itemType: 'phrases',
            );
          }),
        ));
  }
}
