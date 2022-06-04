import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.btnName, required this.onPress}) : super(key: key);
  final String btnName;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        height: 50,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          gradient: LinearGradient(colors: [Color(0xFF2AA5E8),Color(0xFFF07AAC)]),
        ),
        child: Center(
          child: Text(
            btnName,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
