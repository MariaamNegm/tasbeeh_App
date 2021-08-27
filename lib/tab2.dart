import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasbeh/disazkar.dart';
import 'package:tasbeh/tab3.dart';
import 'package:tasbeh/tab4.dart';
import 'package:tasbeh/tab5.dart';
import 'package:tasbeh/tab6.dart';

class tab2 extends StatefulWidget {
  @override
  _tab2State createState() => _tab2State();
}
//this class is for the list of cards hold azkar for each type
class _tab2State extends State<tab2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Stack(
        children: [
          //background image
          Image.asset("images/tas2.jpg", fit: BoxFit.cover,width:double.infinity,),
          //the view of the items on the stack
          GridView(gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
            children: [
              //the children of the gridview as gesturedetector to make it clickable
              GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context){return disazkar();}));
                  // when clicked will go to the disazkar page
                },
                child: Container(
                  height:30,
                  width:10,
                  margin:EdgeInsets.all(5),
                  padding: EdgeInsets.only(  bottom: 20),
                  child:Card(
                    elevation: 40.8,
                    margin:EdgeInsets.all(6),
                    shape:RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(30)
                    ),
                    color:Colors.black87,
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Text("اذكار  الصباح",style:TextStyle
                        (fontSize:28,color: Colors.white,fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,),textAlign:TextAlign.center,),
                    ),
                  ) ,
                ),
              ),
              GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context){return tab3();}));
                  // when clicked will go to the tab3 page
                },
                child: Container(
                  height:30,
                  width:10,
                  margin:EdgeInsets.all(5),
                  padding: EdgeInsets.only(  bottom: 20),
                  child:Card(
                    elevation: 40.8,
                    margin:EdgeInsets.all(6),
                    shape:RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(30)
                    ),
                    color:Colors.black87,
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Text("اذكار المساء",style:TextStyle
                        (fontSize:28,color: Colors.white,fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,),textAlign:TextAlign.center,),
                    ),
                  ) ,
                ),
              ),
              GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context){return tab4();}));
                  // when clicked will go to the tab4 page
                },
                child: Container(
                  height:30,
                  width:10,
                  margin:EdgeInsets.all(5),
                  padding: EdgeInsets.only(  bottom: 20),
                  child:Card(
                    elevation: 40.8,
                    margin:EdgeInsets.all(6),
                    shape:RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(30)
                    ),
                    color:Colors.black87,
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Text("اذكار   النوم",style:TextStyle
                        (fontSize:30,color: Colors.white,fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,),textAlign:TextAlign.center,),
                    ),
                  ) ,
                ),
              ),
              GestureDetector(onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context){return  tab5();}));
                // when clicked will go to the tab5 page
              },
                child: Container(
                  height:30,
                  width:10,
                  margin:EdgeInsets.all(5),
                  padding: EdgeInsets.only(  bottom: 20),
                  child:Card(
                    elevation: 40.8,
                    margin:EdgeInsets.all(6),
                    shape:RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(30)
                    ),
                    color:Colors.black87,
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Text("اذكار الصلاة",style:TextStyle
                        (fontSize:28,color: Colors.white,fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,),textAlign:TextAlign.center,),
                    ),
                  ) ,
                ),
              ),
              GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context){return tab6();}));
                  // when clicked will go to the tab6 page
                },
                child: Container(
                  height:30,
                  width:10,
                  margin:EdgeInsets.all(5),
                  padding: EdgeInsets.only(  bottom: 20),
                  child:Card(
                    elevation: 40.8,
                    margin:EdgeInsets.all(6),
                    shape:RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(30)
                    ),
                    color:Colors.black87,
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Text("اذكار المسجد",style:TextStyle
                        (fontSize:28,color: Colors.white,fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,),textAlign:TextAlign.center,),
                    ),
                  ) ,
                ),
              ),
            ],

          )
        ],
      )
    );
  }
}
