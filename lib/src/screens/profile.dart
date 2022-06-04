import 'package:clubhouse/src/widgets/customDotted.dart';
import 'package:clubhouse/src/widgets/customTile.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

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
            Container(
              height: 120,
              margin: EdgeInsets.only(
                left: 58,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(120),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/pro.jpg"))),
                  ),
                  SizedBox(
                    width: 19,
                  ),
                  Container(
                    child: Text(
                      "Saranya",
                      style: TextStyle(
                        fontSize: 24,
                        color: Color.fromRGBO(8, 10, 36, 1),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 100,
              margin: EdgeInsets.only(top: 9, left: 47, right: 52),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(240, 122, 172, 1),
                    Color.fromRGBO(61, 162, 227, 1),
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Followers",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "231",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  CustomDotted(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "data",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "479",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 42),
              child: Text(
                "Bio",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(8, 10, 36, 1),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 21, left: 33, right: 31),
              // height: 136,
              child: TextFormField(
                onChanged: (value) {
                  print(value);
                },
                initialValue:
                    "Travis Tanner a certified Wellness Specialist talks about mental health, problems etc.",
                maxLines: 5,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                decoration: InputDecoration(
                  suffixText: "43",
                  suffixStyle: TextStyle(fontSize: 12),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromRGBO(48, 48, 48, 1)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromRGBO(48, 48, 48, 1)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),

         CustomTile(onPress: (){print("personal");}, title: "Personal", leadingIcon: Icons.person_outline,),
          CustomTile(onPress: (){print("My Rooms");}, title: "My Rooms", leadingIcon: Icons.meeting_room_outlined),
          CustomTile(onPress: (){print("Catagories");}, title: "Categories", leadingIcon: Icons.file_present_outlined),
          CustomTile(onPress: (){print("Help");}, title: "Help", leadingIcon: Icons.help_outline,),
          CustomTile(onPress: (){print("logout  ");}, title: "Logout", leadingIcon: Icons.logout_outlined,),
          
          ],
        ),
      ),
    );
  }
}
