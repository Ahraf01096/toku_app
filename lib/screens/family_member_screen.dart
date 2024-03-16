import 'package:flutter/material.dart';
import 'package:toku/components/items.dart';

import '../models/item.dart';

  class FamilyPage extends StatefulWidget {
    FamilyPage({super.key});

  @override
  State<FamilyPage> createState() => _FamilyPageState();
}

class _FamilyPageState extends State<FamilyPage> {
  final List<Item> family =[
    Item(
      sound: 'sounds/family_members/father.wav',
      jpName: 'ichi',
      enName: 'father',
      image: 'assets/images/family_members/family_father.png',
    ),
    Item(
      sound: 'sounds/family_members/mother.wav',
      jpName: 'Ni',
      enName: 'mother',
      image: 'assets/images/family_members/family_mother.png',
    ),
    Item(
      sound: 'sounds/family_members/older bother.wav',
      jpName: 'San',
      enName: 'older brother',
      image: 'assets/images/family_members/family_older_brother.png',
    ),
    Item(
      sound: 'sounds/family_members/older sister.wav',
      jpName: 'Shi',
      enName: 'older sister',
      image: 'assets/images/family_members/family_older_sister.png',
    ),
    Item(
      sound: 'sounds/family_members/younger brother.wav',
      jpName: 'Go',
      enName: 'younger brother',
      image: 'assets/images/family_members/family_younger_brother.png',
    ),
    Item(
      sound: 'sounds/family_members/younger sister.wav',
      jpName: 'Roku',
      enName: 'younger sister',
      image: 'assets/images/family_members/family_younger_sister.png',
    ),
    Item(
      sound: 'sounds/family_members/son.wav',
      jpName: 'Sebun',
      enName: 'son',
      image: 'assets/images/family_members/family_son.png',
    ),
    Item(
      sound: 'sounds/family_members/daughter.wav',
      jpName: 'hachi',
      enName: 'daughter',
      image: 'assets/images/family_members/family_daughter.png',
    ),
    Item(
      sound: 'sounds/family_members/grand father.wav',
      jpName: 'Kyū',
      enName: 'grand father',
      image: 'assets/images/family_members/family_grandfather.png',
    ),
    Item(
      sound: 'sounds/family_members/grand mother.wav',
      jpName: 'Jū',
      enName: 'grand mother',
      image: 'assets/images/family_members/family_grandmother.png',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff49332A),
        title: const Text('Family Members'),
      ),
      body:ListView.builder(
        itemCount: family.length,
        itemBuilder: (context, index) {
          return NumbersItem(
            number: family[index],
            color: const Color(0xff5E8A3E),
          );
        },
      ),
    );
  }
}
