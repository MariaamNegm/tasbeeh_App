import 'package:flutter/material.dart';



class bottomsheethelp extends StatefulWidget {
  @override
  _bottomsheethelpState createState() => _bottomsheethelpState();
}
// this class is created for the small note if you click on the info icon
class _bottomsheethelpState extends State<bottomsheethelp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color of the background of the small note
      color:Colors.white,
      //padding the listview item because inside it we will notice the small white note
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        //padding from all sides
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              //padding from all sides
              child: Row(
                //made it as row to handel the data inside in shape of a row widget
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //main alignment is spacebetween the text and the icon of close
                children: [
                  Text("للمساعدة", style:TextStyle(
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
            Text("هذا البرنامج يستخدم للتسبيح و التذكير", style:TextStyle(
              //info of the small note
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
             //properties of the text inside
            ),)
          ],
        ),
      ),
    );
  }
}
