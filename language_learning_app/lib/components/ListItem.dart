import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:language_learning_app/models/Item.dart';

import '../models/Phrase.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem(
      {super.key,
      required this.color,
      required this.phraseItem,
      required this.itemType});
  final Phrase phraseItem;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phraseItem.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  phraseItem.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              // final player = AudioCache(prefix: 'assets/sounds/$item.itemType/');
              try {
                AssetsAudioPlayer.newPlayer().open(
                  Audio(phraseItem.sound),
                );
              } catch (e) {
                print(e);
              }
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem(
      {super.key,
      required this.item,
      required this.color,
      required this.itemType});
  final Item item;
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color(0xfffff4db),
            child: Image.asset(item.image!),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  item.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              // final player = AudioCache(prefix: 'assets/sounds/$item.itemType/');
              try {
                AssetsAudioPlayer.newPlayer().open(
                  Audio(item.sound),
                );
              } catch (e) {
                print(e);
              }
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}
