import 'package:flutter/material.dart';
import 'package:tasbeh/newcard.dart';

class  tab6 extends StatefulWidget {
  @override
  _tab6State createState() => _tab6State();
}
//this tab is for prayer
class _tab6State extends State<tab6> {
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
                newcard("  اللّهُـمَّ اجْعَـلْ في قَلْبـي نورا ، وَفي لِسـاني نورا، وَاجْعَـلْ في سَمْعي نورا، وَاجْعَـلْ في بَصَري نورا، وَاجْعَـلْ مِنْ خَلْفي نورا، وَمِنْ أَمامـي نورا، وَاجْعَـلْ مِنْ فَوْقـي نورا ، وَمِن تَحْتـي نورا .اللّهُـمَّ أَعْطِنـي نورا.ً"),
                newcard(" أَعوذُ باللهِ العَظيـم وَبِوَجْهِـهِ الكَرِيـم وَسُلْطـانِه القَديـم مِنَ الشّيْـطانِ الرَّجـيم، بِسْمِ اللَّهِ، وَالصَّلاةُ وَالسَّلامُ عَلَى رَسُولِ الله، اللّهُـمَّ افْتَـحْ لي أَبْوابَ رَحْمَتـِك"),
                newcard("بِسْـمِ اللَّـهِ وَالصَّلاةُ وَالسَّلامُ عَلَى رَسُولِ اللَّهِ، اللَّهُمَّ إنِّي أَسْأَلُكَ مِنْ فَضْلِكَ، اللَّهُمَّ اعْصِمْنِي مِنَ الشَّيْطَانِ الرَّجِيم."),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
