import 'package:clubhouse/src/routes/routes.dart';
import 'package:clubhouse/src/widgets/customButton.dart';
import 'package:clubhouse/src/widgets/customList.dart';
import 'package:flutter/material.dart';

class CatagorieScreen extends StatelessWidget {
  const CatagorieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          
          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          
          Container(
            width: size.width,
            height: 198,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF2AA5E8), Color(0xFFF07AAC)]),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(33),
                    bottomRight: Radius.circular(33))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: IconButton(
                      onPressed: () {Navigator.of(context).pop();},
                      icon: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.white,
                      )),
                ),
                Container(
                    alignment: Alignment.center,
                    child: Text("Select Categories",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ))),
                Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.search_outlined),
                        suffixIconColor: Colors.white,
                        hintStyle: TextStyle(color: Colors.grey),
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: EdgeInsets.only(
                          left: 16,
                          top: 5,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        hintText: "What do you need help with ?"),
                  ),
                )
              ],
            ),
          ),
          
          Container(
            margin: EdgeInsets.only(top: 214),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomList(
                      catagorieText: "Anxiety",
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomList(
                      catagorieText: "Depression",
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomList(
                      catagorieText: "Yoga",
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomList(
                      catagorieText: "Wellness",
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomList(catagorieText: "Music",),
                  ],
                ),
                CustomButton(btnName: "Submit", onPress: (){                        Navigator.of(context).pushNamed(RouteGenerator.verfySuccessScreen);
},)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
