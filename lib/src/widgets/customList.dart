import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {
  const CustomList({Key? key, required this.catagorieText}) : super(key: key);
  final String catagorieText;
  @override
  Widget build(BuildContext context) {
        final size = MediaQuery.of(context).size;

    return Container(
      height: 50,
      width: size.width*0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Text(
          catagorieText,
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ),
    );
  }
}
