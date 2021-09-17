import 'package:flutter/material.dart';
import 'package:tasbeh/newcard.dart';

class  tab5 extends StatefulWidget {
  @override
  _tab5State createState() => _tab5State();
}
//this tab is for masjed
class _tab5State extends State< tab5> {
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
          Container(decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/tas2.jpg"),
                // it changes while updating from the function
                fit: BoxFit.cover,
              )),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              //having listview of the azkar
              children: [
                //make an object of class newcard to pass text to the constructor
                newcard(" سُبْحانَ رَبِّيَ الْعَظِيْمِ.ً"),
                newcard("سُبْحَانَ رَبِّيَ العَظِيمِ وَبِحَمْدِهِ. "),
                newcard(" سُبحانَكَ اللّهمَّ ربَّنا وَبِحمدِكَ، اللّهمَّ اغفِرْ ليً"),
                newcard(" سُبْحَانَ رَبِّيَ الأعْلَى وَبِحَمْدِهًِ"),
                newcard(" سَمِعَ اللهُ لِمَنْ حَمِدَهُ.ً"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
