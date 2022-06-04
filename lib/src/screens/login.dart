import 'package:clubhouse/src/routes/routes.dart';
import 'package:clubhouse/src/widgets/customButton.dart';
import 'package:clubhouse/src/widgets/inputfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: ListView(
      children: [
        Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/background.jpg"),
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Color(0xFF8F97A6),
                      )),
                  Text(
                    "Login To Life",
                    style: TextStyle(
                        fontSize: 22,
                        color: Color(0xFF1E3354),
                        fontWeight: FontWeight.w700),
                  ),
                  Container()
                ],
              ),
              Stack(
                children: [
                  Positioned(
                    child: Container(
                      width: 120,
                      height: 120,
                      child: Image(
                        image: AssetImage("assets/images/profile.jpg"),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      width: 40,
                      height: 40,
                      child: IconButton(
                        color: Colors.blue,
                        onPressed: () {},
                        icon: Icon(Icons.camera_alt_outlined),
                      ),
                    ),
                  )
                ],
              ),
              InputField(
                hint: "Username/Email",
                label: "Enter Username/Email",
              ),
              InputField(
                hint: "Enter Password",
                label: "Password",
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                      color: Color(0XFF6286CB),
                      fontWeight: FontWeight.w800,
                      fontSize: 12),
                ),
              ),
              CustomButton(
                onPress: () {
                  Navigator.of(context).pushNamed(RouteGenerator.homeScreen);
                },
                btnName: "Login",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Text(""),
                  ),
                  Expanded(
                      flex: 3,
                      child: Container(
                        height: 1,
                        color: Colors.white,
                      )),
                  Expanded(
                      child: Text(
                    "   Or",
                    style: TextStyle(color: Color(0XFF7F8E9D)),
                  )),
                  Expanded(
                      flex: 3,
                      child: Container(
                        height: 1,
                        color: Colors.white,
                      )),
                  Expanded(
                    child: Text(""),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage("assets/images/face.jpeg"))),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(""),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage("assets/images/google.png"))),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(""),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage("assets/images/apple.png"))),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(""),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Color(0XFF1E3354),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Color(0XFF6286CB),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}
