import 'package:clubhouse/src/providers/UI/uIProvider.dart';
import 'package:clubhouse/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UiProvider(),
        ),
      ],
      child: ClubeHouse(),
    ),
  );
}

class ClubeHouse extends StatelessWidget {
  const ClubeHouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteGenerator.homeScreen,
      // initialRoute: RouteGenerator.signupScreen,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

// Navigator.of(context).pushNamed(RouteGenerator.loseScreen);


// Container(
//           height: 151,
//           decoration: BoxDecoration(
//             gradient:
//                 LinearGradient(colors: [Color(0XFF2AA5E8), Color(0XFFF07AAC)]),
//           ),
//           child: Column(
//             children: [
//               Expanded(
//                 flex: 2,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Container(
//                       height: 34,
//                       width: 34,
//                       alignment: Alignment.center,
//                       child: IconButton(
//                           onPressed: () {},
//                           icon: Icon(Icons.notifications_active)),
//                       decoration: BoxDecoration(
//                           color: Color.fromRGBO(255, 255, 255, 0.6),
//                           borderRadius: BorderRadius.circular(11)),
//                     ),
//                     const SizedBox(width: 11),
//                     Container(
//                       height: 34,
//                       width: 34,
//                       alignment: Alignment.center,
//                       decoration: BoxDecoration(
//                           image: const DecorationImage(
//                               fit: BoxFit.fill,
//                               image: AssetImage("../assets/images/prof.png")),
//                           borderRadius: BorderRadius.circular(11)),
//                     )
//                   ],
//                 ),
//               ),
//               Expanded(
//                 flex: 2,
//                 child: Container(
//                   child: const Text(
//                     "Welcome Rahul",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 23,
//                       fontWeight: FontWeight.w700,
//                       fontFamily: "Mulish",
//                       shadows: [
//                         Shadow(
//                           color: Color.fromRGBO(0, 0, 0, 0.25),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 flex: 3,
//                 child: Container(
//                   margin:
//                       const EdgeInsets.only(left: 30, right: 30, bottom: 20),
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                         focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.white),
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(15),
//                           ),
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.white),
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(15),
//                           ),
//                         ),
//                         suffixIcon: Icon(Icons.search_outlined),
//                         contentPadding: EdgeInsets.only(
//                           left: 16,
//                         ),
//                         fillColor: Colors.white,
//                         filled: true,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(15),
//                           ),
//                         ),
//                         hintText: "Search Topics"),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),













//         ListView(
//         children: [
//           Column(
//             children: [
//               Container(
//                 margin: EdgeInsets.only(top: 14),
//                 height: 150,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   children: [
//                     CustomProfile(
//                       onFollow: () {
//                         print("folow this one");
//                       },
//                       profileUrl: "../assets/images/prof2.png",
//                       userName: "Travis Tanner",
//                       userJob: "Yoga Teacher",
//                       userRate: "4.5",
//                     ),
//                     CustomProfile(
//                       onFollow: () {
//                         print("folow this one");
//                       },
//                       profileUrl: "../assets/images/prof.png",
//                       userName: "Travis Tanner",
//                       userJob: "Yoga Teacher",
//                       userRate: "5",
//                     ),
//                     CustomProfile(
//                       onFollow: () {
//                         print("folow this one");
//                       },
//                       profileUrl: "../assets/images/prof2.png",
//                       userName: "Travis Tanner",
//                       userJob: "Yoga Teacher",
//                       userRate: "4.5",
//                     ),
//                     CustomProfile(
//                       onFollow: () {
//                         print("folow this one");
//                       },
//                       profileUrl: "../assets/images/pro.jpg",
//                       userName: "Travis Tanner",
//                       userJob: "Yoga Teacher",
//                       userRate: "3.5",
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 33,
//               ),
//               Container(
//                 alignment: Alignment.centerLeft,
//                 margin: EdgeInsets.only(left: 16, bottom: 10),
//                 child: Text("Best Topics Today",
//                     style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.w700,
//                         color: Color(0XFF222222))),
//               ),
//               CustomCard(
//                 onJoined: () {
//                   print("join with");
//                 },
//                 postedBy: "Travis Tanner",
//                 onOption: () {
//                   print("travis option");
//                 },
//                 numberOfJoinedUser: "123",
//                 topicTitle: "Mental Health Tips for Beginners",
//                 topicDescription:
//                     "Importance of wellness and mental health. Present scenario on the importance  of mental health.",
//                 groupOwnerPicUrl: "../assets/images/pro.jpg",
//                 yourPicUrl: "../assets/images/prof2.png",
//               ),
//               CustomCard(
//                 onJoined: () {
//                   print("join getachew");
//                 },
//                 postedBy: "Getachew",
//                 onOption: () {
//                   print("Getachew option");
//                 },
//                 numberOfJoinedUser: "452",
//                 topicTitle: "Mental Health Tips for Beginners",
//                 topicDescription:
//                     "Importance of wellness and mental health. Present scenario on the importance  of mental health.",
//                 yourPicUrl: "../assets/images/pro.jpg",
//                 groupOwnerPicUrl: "../assets/images/prof.png",
//               )
//             ],
//           ),
//         ],
//       ),