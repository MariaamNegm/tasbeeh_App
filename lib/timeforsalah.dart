import 'package:flutter/material.dart';
class timeforsalah extends StatefulWidget {
  @override
  _timeforsalahState createState() => _timeforsalahState();
}
//this tab is for paryer time schedule
class _timeforsalahState extends State<timeforsalah> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.white,
      //background color
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:3,horizontal: 5),

        child: ListView(
          //make listview for each row of paryer name and time
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("25/8", style:TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,

                  ),),
                  IconButton(
                      alignment: Alignment.topRight,
                      onPressed:(){
                        Navigator.pop(context);
                      }, icon:Icon(Icons.close , color:Colors.black87,size: 30,))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Divider(
                color: Colors.black87,
                height: 0.1,
                endIndent: 4,
                thickness: 2,
              ),
            ),
            //make divider here for separation
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(

                children: [
                  Expanded(
                    flex:60,
                    child: Text("fajr:",textAlign:TextAlign.left,
                      style: TextStyle(fontSize: 20,color: Colors.black87,fontWeight: FontWeight.w600),),
                  ),
                  Expanded(
                    flex:40,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text("3:58 AM",textAlign:TextAlign.right,
                        style: TextStyle(fontSize: 20,color: Colors.black87,fontWeight: FontWeight.w600),),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(

                children: [
                  Expanded(
                    flex:60,
                    child: Text("Dhuhr:",textAlign:TextAlign.left,
                      style: TextStyle(fontSize: 20,color: Colors.black87,fontWeight: FontWeight.w600),),
                  ),
                  Expanded(
                    flex:40,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text("11:56 AM",textAlign:TextAlign.right,
                        style: TextStyle(fontSize: 20,color: Colors.black87,fontWeight: FontWeight.w600),),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(

                children: [
                  Expanded(
                    flex:60,
                    child: Text("Asr:",textAlign:TextAlign.left,
                      style: TextStyle(fontSize: 20,color: Colors.black87,fontWeight: FontWeight.w600),),
                  ),
                  Expanded(
                    flex:40,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text("3:31 PM",textAlign:TextAlign.right,
                        style: TextStyle(fontSize: 20,color: Colors.black87,fontWeight: FontWeight.w600),),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(

                children: [
                  Expanded(
                    flex:60,
                    child: Text("Maghrib:",textAlign:TextAlign.left,
                      style: TextStyle(fontSize: 20,color: Colors.black87,fontWeight: FontWeight.w600),),
                  ),
                  Expanded(
                    flex:40,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text("6:23 PM",textAlign:TextAlign.right,
                        style: TextStyle(fontSize: 20,color: Colors.black87,fontWeight: FontWeight.w600),),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(

                children: [
                  Expanded(
                    flex:60,
                    child: Text("Isha:",textAlign:TextAlign.left,
                      style: TextStyle(fontSize: 20,color: Colors.black87,fontWeight: FontWeight.w600),),
                  ),
                  Expanded(
                    flex:40,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text("7:44 PM",textAlign:TextAlign.right,
                        style: TextStyle(fontSize: 20,color: Colors.black87,fontWeight: FontWeight.w600),),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
