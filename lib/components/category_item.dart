import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({super.key, required this.text,required this.color, required this.onTap});
  String text;
  Color color;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        color: color,
        width: double.infinity,
        height: 65,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text( text,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 20
            ),),
        ),
      ),
    );
  }
}