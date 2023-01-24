import 'package:flutter/material.dart';

import '../components/ListItem.dart';
import '../models/Item.dart';

class FamilyMemberPage extends StatelessWidget {
  const FamilyMemberPage({super.key});
  final List<Item> familyMember = const [
    Item(
      enName: 'Father',
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Chichioya',
      sound: 'assets/sounds/family_members/father.wav',
    ),
    Item(
      enName: 'Daughter',
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      sound: 'assets/sounds/family_members/daughter.wav',
    ),
    Item(
      enName: 'Grand Father',
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Ojisan',
      sound: 'assets/sounds/family_members/grand father.wav',
    ),
    Item(
      enName: 'Mother',
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Hahaoya',
      sound: 'assets/sounds/family_members/mother.wav',
    ),
    Item(
      enName: 'Grand Mother',
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Sobo',
      sound: 'assets/sounds/family_members/grand mother.wav',
    ),
    Item(
      enName: 'older brother',
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Nisan',
      sound: 'assets/sounds/family_members/older bother.wav',
    ),
    Item(
      enName: 'older sister',
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Ane',
      sound: 'assets/sounds/family_members/older sister.wav',
    ),
    Item(
      enName: 'son',
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      sound: 'assets/sounds/family_members/son.wav',
    ),
    Item(
      enName: 'younger brother',
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'otouto',
      sound: 'assets/sounds/family_members/younger brohter.wav',
    ),
    Item(
      enName: 'younger sister',
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'imoto',
      sound: 'assets/sounds/family_members/younger sister.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Family Members'),
          backgroundColor: Color(0xff46322b),
        ),
        body: ListView.builder(
          itemCount: familyMember.length,
          itemBuilder: ((context, index) {
            print(index);
            return ListItem(
              item: familyMember[index],
              color: Color(0xff5d8b3b),
              itemType: 'family_members',
            );
          }),
        ));
  }
}
