import 'package:clubhouse/src/routes/routes.dart';
import 'package:clubhouse/src/widgets/customButton.dart';
import 'package:clubhouse/src/widgets/inputfield.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
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
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Color(0xFF8F97A6),
                      )),
                  Text(
                    "Signup",
                    style: TextStyle(fontSize: 20, color: Color(0xFF8F97A6)),
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
                hint: "First Name",
                label: "First Name",
              ),
              InputField(
                hint: "Last Name",
                label: "Last Name",
              ),
              InputField(
                hint: "Enter email",
                label: "Email",
              ),
              InputField(
                hint: "Enter username",
                label: "Username",
              ),
              InputField(
                hint: "Enter password",
                label: "Password",
              ),
              InputField(
                hint: "Confirm password",
                label: "Confirm Password",
              ),
              Column(
                children: [
                  CheckboxListTile(
                      title: Text(
                        "Are you a Medical Health Professional ? ",
                        style: TextStyle(color: Color(0XFF2AA5E8)),
                      ),
                      value: true,
                      onChanged: (value) {}),
                  CheckboxListTile(
                      title: Text(
                        "Accept terms of service ",
                        style: TextStyle(color: Color(0XFF2AA5E8)),
                      ),
                      value: false,
                      onChanged: (value) {})
                ],
              ),
              CustomButton(
                onPress: (){
                  Navigator.of(context).pushNamed(RouteGenerator.verifyScreen);
},
                btnName: "Register",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Already have an account?.",
                    style: TextStyle(color: Color(0xFF1E3354), fontSize: 16),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(RouteGenerator.loginScreen);
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(fontSize: 16),
                      ))
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
