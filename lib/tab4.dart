import 'package:flutter/material.dart';
import 'package:tasbeh/newcard.dart';

class  tab4 extends StatefulWidget {
  @override
  _tab4State createState() => _tab4State();
}
//this tab is before sleep
class _tab4State extends State< tab4> {
  //define your own colors
  Color greenish=Color.fromRGBO( 229, 243, 238, 1);
  Color greenishbot=Color.fromRGBO( 229, 243, 238, 1);
  Color blackcolor=Color.fromRGBO(2, 12, 8, 1);
  int counter=3;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: blackcolor,
        leading: IconButton(
          onPressed:(){Navigator.pop(context);}
          ,icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
        ),
      ),
      body:Stack(
        children:[
          Image.asset("images/tas2.jpg", fit: BoxFit.cover,width:double.infinity,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              //having listview of the azkar
              children: [
                //make an object of class newcard to pass text to the constructor
                newcard(" بِاسْـمِكَ اللّهُـمَّ أَمـوتُ وَأَحْـيا. ً"),
                newcard(" اللّهُـمَّ قِنـي عَذابَـكَ يَـوْمَ تَبْـعَثُ عِبـادَكً"),
                newcard(" سُبْحَانَ اللَّهِ.ً"),
                newcard(" الْحَمْدُ لِلَّهِ.ً"),
                newcard(" اللَّهُ أَكْبَرًُ"),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
