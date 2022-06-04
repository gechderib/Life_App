import 'package:clubhouse/src/widgets/customDotted.dart';
import 'package:clubhouse/src/widgets/customHelp.dart';
import 'package:clubhouse/src/widgets/customResourceCard.dart';
import 'package:clubhouse/src/widgets/customTile.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/images/background.jpg"),
          fit: BoxFit.fill,
        ),
      ),
      child: Container(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 24, left: 31, bottom: 37),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(232, 233, 255, 1),
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Color.fromRGBO(88, 94, 229, 1),
                        )),
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  Container(
                    child: Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: 24,
                        color: Color.fromRGBO(8, 10, 36, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            CustomHelp(
              helpText: "Do you want to know more \n about Yoga ?",
              helpIcon: Icons.file_present,
              helpIconBackColor: Colors.black,
              onRequestHelp: () {},
            ),
            
            CustomHelp(
              helpText: "Problems during Signup ?",
              helpIcon: Icons.file_present,
              helpIconBackColor: Color.fromRGBO(255, 216, 85, 1),
              onRequestHelp: () {},
            ),
            
            CustomHelp(
              helpText: "Password cannot be changed ? ?",
              helpIcon: Icons.file_present,
              helpIconBackColor: Color.fromRGBO(0, 199, 151, 1),
              onRequestHelp: () {},
            ),
            
            CustomHelp(
              helpText: "Problem with Medical health \n practitioners ?",
              helpIcon: Icons.file_present,
              helpIconBackColor: Color.fromRGBO(29, 106, 255, 1),
              onRequestHelp: () {},
            ),
            
            CustomHelp(
              helpText: "problem with room creation ?",
              helpIcon: Icons.file_present,
              helpIconBackColor: Colors.black,
              onRequestHelp: () {},
            ),
            
            CustomHelp(
              helpText: "Problem with user categories ?",
              helpIcon: Icons.file_present,
              helpIconBackColor: Color.fromRGBO(255, 216, 85, 1),
              onRequestHelp: () {},
            ),
          
          ],
        ),
      ),
    );
  }
}
