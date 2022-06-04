import 'package:flutter/material.dart';

class CustomDotted extends StatelessWidget {
  const CustomDotted({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(children: [
                  Text(""),
                  Container(width: 1,height: 5, color: Colors.white,),
                  SizedBox(height: 5,),
                  Container(width: 1,height: 5, color: Colors.white,),
                  SizedBox(height: 5,),
                  Container(width: 1,height: 5, color: Colors.white,),
                  SizedBox(height: 5,),  
                  Container(width: 1,height: 5, color: Colors.white,),
                  SizedBox(height: 5,),  
                  Container(width: 1,height: 5, color: Colors.white,),
                  SizedBox(height: 5,),
                                    Container(width: 1,height: 5, color: Colors.white,),
                  SizedBox(height: 5,),
                  Container(width: 1,height: 5, color: Colors.white,),
                  
                  Text(""),
                  ],
                  );
  }
}