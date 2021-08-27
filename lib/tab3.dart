import 'package:flutter/material.dart';
import 'package:tasbeh/newcard.dart';

class  tab3 extends StatefulWidget {
  @override
  _tab3State createState() => _tab3State();
}
//this tab is for azkar of night
class _tab3State extends State< tab3> {
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
          //background image
          Image.asset("images/tas2.jpg", fit: BoxFit.cover,width:double.infinity,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              //having listview of the azkar
              children: [
                //make an object of class newcard to pass text to the constructor
                newcard(" حَسْبِـيَ اللّهُ لا إلهَ إلاّ هُوَ عَلَـيهِ تَوَكَّـلتُ وَهُوَ رَبُّ العَرْشِ العَظـيم. ً"),
                newcard(" بِسـمِ اللهِ الذي لا يَضُـرُّ مَعَ اسمِـهِ شَيءٌ في الأرْضِ وَلا في السّمـاءِ وَهـوَ السّمـيعُ العَلـيم.ً"),
                newcard(" اللّهُـمَّ بِكَ أَمْسَـينا وَبِكَ أَصْـبَحْنا، وَبِكَ نَحْـيا وَبِكَ نَمُـوتُ وَإِلَـيْكَ الْمَصِيرًُ"),
                newcard(" سُبْحـانَ اللهِ وَبِحَمْـدِهِ عَدَدَ خَلْـقِه ، وَرِضـا نَفْسِـه ، وَزِنَـةَ عَـرْشِـه ، وَمِـدادَ كَلِمـاتِـه.ً"),
                newcard(" اللَّهُمَّ صَلِّ وَسَلِّمْ وَبَارِكْ على نَبِيِّنَا مُحمَّد.ً"),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
