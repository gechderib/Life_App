import 'package:clubhouse/src/providers/UI/uIProvider.dart';
import 'package:clubhouse/src/screens/Resource.dart';
import 'package:clubhouse/src/screens/createRoom.dart';
import 'package:clubhouse/src/screens/help.dart';
import 'package:clubhouse/src/screens/profile.dart';
import 'package:clubhouse/src/widgets/customCard.dart';
import 'package:clubhouse/src/widgets/customProfile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var uiCtx = Provider.of<UiProvider>(context);

    void _showOverlay(BuildContext context) {
      OverlayState overlayState = Overlay.of(context) as OverlayState;
      OverlayEntry overlayEntry;
      overlayEntry = OverlayEntry(builder: (context) {
        return Positioned(
          left: MediaQuery.of(context).size.width * 0.1,
          top: MediaQuery.of(context).size.height * 0.3,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: GestureDetector(
              onTap: (){
                uiCtx.overlayNotDisplay();
              },
              child: Container(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.1,
                color: Colors.pink.withOpacity(0.3),
                child: Material(
                  color: Colors.transparent,
                  child: Text('I will disappear in 3 seconds',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.03,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              ),
            ),
          ),
        );
      });
      overlayState.insert(overlayEntry);
      if(!uiCtx.isOverlayDisplayed){
        overlayEntry.remove();
      }
    }

    List<Widget> _widgetOptions = <Widget>[
      ListView(
        children: [
          Container(
            height: 151,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0XFF2AA5E8), Color(0XFFF07AAC)]),
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 31,
                        height: 31,
                        margin: EdgeInsets.only(left: 12, top: 13),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(250, 250, 250, 0.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Builder(
                          builder: (ctx) => IconButton(
                            onPressed: () {
                              Scaffold.of(ctx).openDrawer();
                            },
                            icon: Icon(
                              Icons.menu,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 31,
                            height: 31,
                            margin: EdgeInsets.only(top: 13),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.notifications_active),
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 0.6),
                              borderRadius: BorderRadius.circular(11),
                            ),
                          ),
                          const SizedBox(width: 11),
                          Container(
                            height: 34,
                            width: 34,
                            margin: EdgeInsets.only(top: 13, right: 13),
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image:
                                        AssetImage("assets/images/prof.png")),
                                borderRadius: BorderRadius.circular(20)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: const Text(
                      "Welcome Rahul",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Mulish",
                        shadows: [
                          Shadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    margin:
                        const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          suffixIcon: Icon(Icons.search_outlined),
                          contentPadding: EdgeInsets.only(
                            left: 16,
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          hintText: "Search Topics"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 14),
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CustomProfile(
                      onFollow: () {
                        print("folow this one");
                        uiCtx.overlayDisplay();
                        _showOverlay(context);
                      },
                      profileUrl: "assets/images/prof2.png",
                      userName: "Travis Tanner",
                      userJob: "Yoga Teacher",
                      userRate: "4.5",
                    ),
                    CustomProfile(
                      onFollow: () {
                        print("folow this one");
                      },
                      profileUrl: "assets/images/prof.png",
                      userName: "Travis Tanner",
                      userJob: "Yoga Teacher",
                      userRate: "5",
                    ),
                    CustomProfile(
                      onFollow: () {
                        print("folow this one");
                      },
                      profileUrl: "assets/images/prof2.png",
                      userName: "Travis Tanner",
                      userJob: "Yoga Teacher",
                      userRate: "4.5",
                    ),
                    CustomProfile(
                      onFollow: () {
                        print("folow this one");
                      },
                      profileUrl: "assets/images/pro.jpg",
                      userName: "Travis Tanner",
                      userJob: "Yoga Teacher",
                      userRate: "3.5",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 33,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 16, bottom: 10),
                child: Text("Best Topics Today",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF222222))),
              ),
              CustomCard(
                onJoined: () {
                  print("join with");
                },
                postedBy: "Travis Tanner",
                onOption: () {
                  print("travis option");
                },
                numberOfJoinedUser: "123",
                topicTitle: "Mental Health Tips for Beginners",
                topicDescription:
                    "Importance of wellness and mental health. Present scenario on the importance  of mental health.",
                groupOwnerPicUrl: "assets/images/pro.jpg",
                yourPicUrl: "assets/images/prof2.png",
              ),
              CustomCard(
                onJoined: () {
                  print("join getachew");
                },
                postedBy: "Getachew",
                onOption: () {
                  print("Getachew option");
                },
                numberOfJoinedUser: "452",
                topicTitle: "Mental Health Tips for Beginners",
                topicDescription:
                    "Importance of wellness and mental health. Present scenario on the importance  of mental health.",
                yourPicUrl: "assets/images/pro.jpg",
                groupOwnerPicUrl: "assets/images/prof.png",
              )
            ],
          ),
        ],
      ),
      ResourceScreen(),
      CreateRoomScreen(),
      HelpScreen(),
      ProfileScreen(),
    ];

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(uiCtx.activeIndex),
      ),
      floatingActionButton: Container(
        width: 72,
        height: 72,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(36)),
        child: Stack(
          children: [
            Positioned(
              top: 8,
              left: 8,
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                    color: Color(0XFFF07AAC),
                    borderRadius: BorderRadius.circular(36)),
                child: IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.add),
                  onPressed: () {
                    uiCtx.changeIndex(2);
                  },
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        selectedFontSize: 10,
        unselectedFontSize: 8,
        currentIndex: uiCtx.activeIndex,
        onTap: (index) {
          print(index);
          uiCtx.changeIndex(index);
        },
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: "Resources", icon: FaIcon(FontAwesomeIcons.book)),
          BottomNavigationBarItem(label: "Create a Room", icon: Icon(null)),
          BottomNavigationBarItem(
              label: "Help", icon: Icon(Icons.help_outline_outlined)),
          BottomNavigationBarItem(
              label: "Profile", icon: FaIcon(FontAwesomeIcons.user))
        ],
      ),
    );
  }
}
