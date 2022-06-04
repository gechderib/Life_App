import 'package:flutter/material.dart';

class CustomProfile extends StatelessWidget {
  const CustomProfile({Key? key, required this.profileUrl, required this.onFollow, required this.userJob, required this.userName, required this.userRate}) : super(key: key);
  final String profileUrl;
  final String userName;
  final String userJob;
  final Function onFollow;
  final String userRate;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 23, right: 23),
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              width:70,
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(profileUrl),
                ),
              ),
            ),
          ),
          
          Expanded(child: Container(child: Text(userName, style: TextStyle(fontSize: 10,color: Color.fromRGBO(34, 34, 34, 1),),),),),
         
          Expanded(child: Container(child: Text(userJob,style: TextStyle(fontSize: 10,color: Color.fromRGBO(0, 0, 0, 1),),),)),
         
          Expanded(
            child: Container(
              
              child: Row(
              children: [
              Expanded(child: Icon(Icons.star,size:11, color: Color(0XFFF07AAC),)),SizedBox(width: 2,),
              Expanded(child: Icon(Icons.star,size:11,color: Color(0XFFF07AAC),)),SizedBox(width: 2,),
              Expanded(child: Icon(Icons.star,size:11,color: Color(0XFFF07AAC),)),SizedBox(width: 2,),
              Expanded(child: Icon(Icons.star,size:11,color: Color(0XFFF07AAC),)),SizedBox(width: 2,),
              Expanded(child: Icon(Icons.star_outline,size:11,color: Color(0XFFF07AAC),)),SizedBox(width: 2,),
              Expanded(child: Text(userRate, style: TextStyle(fontSize: 10),),)
            ],),),
          ),
         SizedBox(height: 8,),
         
          Expanded(child: Container(width: 83, child: TextButton(onPressed: (){onFollow();}, child: Text("Follow", style: TextStyle(color:Colors.white,)),style: TextButton.styleFrom(elevation: 0.0,fixedSize: Size(83, 16), backgroundColor: Colors.blue),),))
        ],
      ),
    );
  }
}
