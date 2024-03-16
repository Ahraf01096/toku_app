import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/item.dart';

class NumbersItem extends StatelessWidget {
  const NumbersItem({super.key, required this.number, required this.color});
  final Item number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          color: color,
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    color: const Color(0xffFEF6DB),
                    child:  Image(image:
                    AssetImage(number.image),
                      height: 100,
                      width: 100,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Text( number.jpName,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),),
                    Text( number.enName,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),)
                  ],
                ),
              ),
              const Spacer(
                flex: 1,
              ),
               Padding(
                 padding: const EdgeInsets.only(right: 16),
                 child: IconButton(
                     onPressed: (){
                     final player = AudioPlayer();
                     player.setSourceAsset('sounds/numbers/number_nine_sound.mp3');
                     },
                     icon:  const Icon(Icons.play_arrow,
                       color: Colors.white,
                       size: 35,),),
               )
            ],
          ),
        ),
        const SizedBox(height: 1,)
      ],
    );
  }
}
