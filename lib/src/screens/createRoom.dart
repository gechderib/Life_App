import 'package:clubhouse/src/widgets/customButton.dart';
import 'package:clubhouse/src/widgets/customDotted.dart';
import 'package:clubhouse/src/widgets/customHelp.dart';
import 'package:clubhouse/src/widgets/customResourceCard.dart';
import 'package:clubhouse/src/widgets/customTile.dart';
import 'package:flutter/material.dart';

class CreateRoomScreen extends StatelessWidget {
  const CreateRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

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
              margin: EdgeInsets.only(
                top: 24,
                left: 31,
              ),
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
                      "Create an Article",
                      style: TextStyle(
                        fontSize: 24,
                        color: Color.fromRGBO(8, 10, 36, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 32, top: 27),
                    child: Text(
                      "Title",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(127, 142, 157, 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 32, right: 55),
                    child: TextFormField(
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(127, 142, 157, 1)),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 17),
                        hintText: "Enter Article  Title",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 32, top: 15),
                    child: Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(8, 10, 36, 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(left: 21, right: 43),
                    child: TextFormField(
                      initialValue:
                          "Travis Tanner a certified Wellness Specialist talks about mental health, problems etc.",
                      maxLines: 5,
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(127, 142, 157, 1)),
                      decoration: InputDecoration(
                        suffix: Container(
                          child: Text("99/300"),
                        ),
                        contentPadding: EdgeInsets.only(
                            left: 8, top: 8, bottom: 18, right: 8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 15, left: 32, bottom: 15),
                    child: Text(
                      "Choose Category",
                      style: TextStyle(
                          fontSize: 15, color: Color.fromRGBO(30, 51, 84, 1)),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 32, right: 59),
                    child: TextFormField(
                      initialValue: "Travis",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(127, 142, 157, 1)),
                      decoration: InputDecoration(
                        fillColor: Color.fromRGBO(255, 255, 255, 0.33),
                        filled: true,
                        contentPadding:
                            EdgeInsets.only(left: 16, top: 12, bottom: 12),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(255, 255, 255, 0.33))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(255, 255, 255, 0.33))),
                      ),
                    ),
                  ),
                  ///////////////////////////////////////////////

                  Container(
                    margin: EdgeInsets.only(top: 15, left: 32, bottom: 15),
                    child: Text(
                      "Upload Images/pdf",
                      style: TextStyle(
                          fontSize: 15, color: Color.fromRGBO(30, 51, 84, 1)),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 32, right: 59),
                    child: TextFormField(
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(127, 142, 157, 1)),
                      decoration: InputDecoration(
                        hintText: "Articles.pdf",
                        suffixIcon: Icon(Icons.upload_file_outlined,
                            color: Colors.black),
                        fillColor: Color.fromRGBO(255, 255, 255, 0.33),
                        filled: true,
                        contentPadding:
                            EdgeInsets.only(left: 16, top: 12, bottom: 12),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(255, 255, 255, 0.33))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(255, 255, 255, 0.33))),
                      ),
                    ),
                  ),
                  /////////////////////////////////////

                  Container(
                    margin: EdgeInsets.only(top: 15, left: 32, bottom: 15),
                    child: Text(
                      "Link to a Video (optional )",
                      style: TextStyle(
                          fontSize: 15, color: Color.fromRGBO(30, 51, 84, 1)),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 32, right: 59),
                    child: TextFormField(
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(127, 142, 157, 1)),
                      decoration: InputDecoration(
                        hintText: "www.youtube.com/videos",
                        fillColor: Color.fromRGBO(255, 255, 255, 0.33),
                        filled: true,
                        contentPadding:
                            EdgeInsets.only(left: 16, top: 12, bottom: 12),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(255, 255, 255, 0.33))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(255, 255, 255, 0.33))),
                      ),
                    ),
                  ),
                  /////////////
                  Container(
                    margin: EdgeInsets.only(top: 60, left: 44, right:44, bottom: 35),
                    child: CustomButton(btnName: "Create Room", onPress: (){print("Create room");}))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
