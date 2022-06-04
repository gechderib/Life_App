import 'package:clubhouse/src/routes/routes.dart';
import 'package:flutter/material.dart';

class VerfySuccessful extends StatelessWidget {
  const VerfySuccessful({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        final size = MediaQuery.of(context).size;

    return Scaffold(
        body: GestureDetector(
          onTap: (){
            Navigator.of(context)
                        .pushNamed(RouteGenerator.loginScreen);
          },
          child: Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/vs.png"),
              ),
            ),
            child: Text(""),
          ),
        ));
  }
}