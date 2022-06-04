import 'package:clubhouse/src/widgets/customResourceCard.dart';
import 'package:flutter/material.dart';

class ResourceScreen extends StatelessWidget {
  const ResourceScreen({Key? key}) : super(key: key);

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
      child: 
      Container(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 24, left: 31),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(232, 233, 255, 1)),
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
                    "Resources",
                    style: TextStyle(
                        fontSize: 24, color: Color.fromRGBO(8, 10, 36, 1)),
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            CustomResourceCard(),
            CustomResourceCard(),
          ],
        ),
      ),
    );
  }
}
