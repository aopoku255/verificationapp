import 'package:flutter/cupertino.dart';

class BoldText extends StatelessWidget {
  final String text;
  const BoldText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,),);
  }
}
