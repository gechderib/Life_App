import 'package:clubhouse/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:clubhouse/src/widgets/customButton.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({Key? key}) : super(key: key);

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
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
                        "Verification",
                        style: TextStyle(
                            fontSize: 22,
                            color: Color(0xFF1E3354),
                            fontWeight: FontWeight.w700),
                      ),
                      Container()
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 60),
                      child: Text(
                        "Check Your Email",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1E3354),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 60, bottom: 40),
                      child: Text(
                        "Check Your Email",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w100,
                          color: Color(0xFF1E3354),
                        ),
                      )),
                  Row(
                    children: [
                      Expanded(child: Text("")),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Text(
                            "__",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Text(
                            "__",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Text(
                            "__",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Text(
                            "__",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Expanded(child: Text("")),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Code Expire in:"),
                  Text(
                    "00:56",
                    style: TextStyle(),
                  ),
                ],
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Didn’t receive code?"),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Resend Code",
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              ),
              
              Container(
                margin: EdgeInsets.only(bottom: 25),
                child: CustomButton(
                  btnName: "Verify",
                  onPress: () {
                    Navigator.of(context)
                        .pushNamed(RouteGenerator.verfySuccessScreen);
                        
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
