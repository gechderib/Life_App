import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.onJoined, required this.groupOwnerPicUrl, required this.yourPicUrl, required this.topicDescription, required this.postedBy, required this.onOption , required this.numberOfJoinedUser, required this.topicTitle}) : super(key: key);
  final String postedBy;
  final Function onOption;
  final String numberOfJoinedUser;
  final String topicTitle;
  final String topicDescription;
  final String groupOwnerPicUrl;
  final String yourPicUrl;
  final Function onJoined;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 12, right: 10, left: 15, bottom: 16),
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 19),
      height: 154,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [
            Color(0XFF8E9EAB),
            Color(0XFFEEF2F2),
          ],
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    postedBy,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF222222)),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: FaIcon(
                          FontAwesomeIcons.user,
                          size: 13,
                        ),
                      ),
                      Container(
                        width: 36,
                        child: Text(
                          numberOfJoinedUser,
                          style: TextStyle(fontSize: 9),
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            print("option clicked");
                            onOption();
                          },
                          child: Container(
                            
                            child: PopupMenuButton(
                              
                              padding: EdgeInsets.all(0),
                              
                              onSelected: (value){print("value");},
                              itemBuilder: (context){
                              return [
                                PopupMenuItem(
                                  child: Container(
                                  width: 154,
                                  height: 43,
                                  child: Row(children: [
                                    Icon(Icons.report_problem_outlined, size:20),
                                    SizedBox(width:6),
                                    Text("Report Room", style: TextStyle(fontSize: 13,color: Color.fromRGBO(63, 51, 86, 1)),)
                                  ],),
                                )),PopupMenuItem(child: Container(
                                  width: 154,
                                  height: 43,
                                  child: Row(children: [
                                    Icon(Icons.share, size: 20,),
                                    SizedBox(width:6),
                                    Text("Share",style: TextStyle(fontSize: 13,color: Color.fromRGBO(63, 51, 86, 1)),)
                                  ],),
                                )
                                ),
                              ];
                            }),
                          )
                          ),

                          // Icon(
                          //   Icons.more_vert,
                          //   size: 20,
                          // )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                topicTitle,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 15,
                  color: Color.fromRGBO(34, 34, 34, 0.7),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 9,
          ),
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            width: 42,
                            height: 42,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(groupOwnerPicUrl),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 15,
                          bottom: 9,
                          child: Container(
                            width: 42,
                            height: 42,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(yourPicUrl),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          topicDescription,
                          style: TextStyle(
                              fontSize: 12, color: Color.fromRGBO(0, 0, 0, 1)),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          onJoined();
                        },
                        child: Container(
                          width: 103,
                          height: 25,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(42, 165, 232, 0.5),
                                Color.fromRGBO(240, 122, 172, 0.5)
                              ])),
                          child: Text(
                            "Join Room",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 10),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
