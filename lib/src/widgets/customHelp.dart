import 'package:flutter/material.dart';

class CustomHelp extends StatelessWidget {
  const CustomHelp(
      {Key? key,
      required this.helpIcon,
      required this.helpIconBackColor,
      required this.helpText,
      required this.onRequestHelp})
      : super(key: key);
  final String helpText;
  final IconData helpIcon;
  final Color helpIconBackColor;
  final Function onRequestHelp;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){print("all we have");
      onRequestHelp();
      },
      child: Container(
        height: 89,
        margin: EdgeInsets.only(left: 37, right: 24, bottom: 22),
        padding: EdgeInsets.only(left: 17),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  color: helpIconBackColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(
                  helpIcon,
                  color: Colors.white,
                )),
            SizedBox(width: 15),
            Text(helpText,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}
