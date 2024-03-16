import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screens/Phrases_page.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/numbers_page.dart';

import 'family_member_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        title: const Text('Toku'),
        backgroundColor: const Color(0xff49332A),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return  NumbersPage();
              }));
            },
              text:'Numbers',
              color: const Color(0xFFEF9235),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => FamilyPage()));
            },
            text:'Family Members',
            color:const Color(0xff5E8A3E),
          ),
          Category(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ColorsPage() )
              );
            },
            text:'Colors',
            color:const Color(0xff854CAE),
          ),
          Category(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PhrasesPage() )
              );
            },
            text:'Phrases',
            color:const Color(0xff4FB0D6),
          ),
        ],
      ),
    );
  }
}

