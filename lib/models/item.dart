import 'package:audioplayers/audioplayers.dart';

class Item{
  String sound;
  String image;
  String jpName;
  String enName;

  Item({
    required this.image ,
    required this.jpName ,
    required this.enName,
    required this.sound
  });
  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}