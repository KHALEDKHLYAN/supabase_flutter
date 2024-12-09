// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Headers extends StatelessWidget {
  const Headers({super.key, required this.hearderText, required this.image});
  final String hearderText;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(hearderText,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          Image.asset(image)
        ],
      ),
    );
  }
}