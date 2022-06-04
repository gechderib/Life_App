import 'package:flutter/material.dart';

class CustomResourceCard extends StatelessWidget {
  const CustomResourceCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 278,
      // padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(top: 24, left: 28, right: 28),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(120, 120, 120, 1),
            Color.fromRGBO(78, 78, 78, 0)
          ],
        ),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 77,
                height: 77,
                margin: EdgeInsets.only(top: 24, left: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(39),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/pro.jpg"),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 12, right: 12),
                child: Text(
                  "Categories : Yoga, Anger.",
                  style: TextStyle(color: Color.fromRGBO(222, 222, 222, 1)),
                ),
              ),
            ],
          ),
          Container(
            width: 288,
            height: 108,
            margin: EdgeInsets.only(left: 35, right: 20, top: 7),
            child: Text(
              "Complete Health Solution",
              style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 35, right: 27, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "By Melanie",
                  style: TextStyle(),
                ),
                Container(
                  width: 32,
                  height: 32,
                  
                  decoration: BoxDecoration(
                    
                    color: Color.fromRGBO(240, 122, 172, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
