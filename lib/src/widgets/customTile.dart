import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({ Key? key , required this.title, required this.leadingIcon, required this.onPress}) : super(key: key);
  final String title;
  final IconData leadingIcon;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return             Container(
              margin: EdgeInsets.only(left: 40, right: 40),
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      onPress();
                    },
                    contentPadding: EdgeInsets.all(0),
                    leading: Container(
                        width: 35,
                        height: 35,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 0, 0, 0.3),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(leadingIcon,
                            color: Colors.black)),
                    title: Text(
                      title,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            );
  }
}