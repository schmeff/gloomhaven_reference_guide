import 'package:flutter/material.dart';

class ReferenceLetterImage extends StatelessWidget {
  final String letter;


  ReferenceLetterImage(this.letter);

  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage('images/'+ this.letter +'_icon.png'), width: 22,);
  }
}
