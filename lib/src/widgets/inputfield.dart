import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({Key? key, required this.hint, required this.label}) : super(key: key);
  final String hint;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(label, style: TextStyle(color: Color(0xFF1E3354),),),
            ),
            TextFormField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 16, top: 5,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  hintText: hint),
            ),
          ],
        ),);
  }
}
