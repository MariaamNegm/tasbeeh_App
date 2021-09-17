import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_rounded_corners/cupertino_rounded_corners.dart';
import 'package:flutter_point_tab_bar/pointTabIndicator.dart';
import 'package:flutter_point_tab_bar/pointTabBar.dart';
import 'package:tasbeh/bottomsheet.dart';
import 'package:tasbeh/tab1.dart';
import 'package:tasbeh/tab2.dart';
import 'package:tasbeh/timeforsalah.dart';
/*
*
*
*
*
*
* this class is created to hold pages inside as it supports the tab bar view
*
*
*
*
* */






class HomeScreen extends StatefulWidget {
  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
// made here a tab bar view
  final tabList = ['تسبيح', 'اذكار'];
  late TabController _tabController;
// controller to move from page to another

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: tabList.length);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/tas2.jpg"),
            // it changes while updating from the function
            fit: BoxFit.cover,
          )),
      child: Scaffold(

          appBar: AppBar(
          elevation:10.0,
          backgroundColor : Colors.black87,
          title: Text('ذَكِّر',
          //title of the appbar
          style: TextStyle(color: Colors.white,fontSize:30, fontWeight:FontWeight.bold),),
      centerTitle: true,
       leading:GestureDetector(
         onTap:(){
           //by clicking on this icon you will go to time of the prayers
           showModalBottomSheet(context: context,
               builder: (BuildContext context)
               {
                 return  timeforsalah();
               });
         },
         child: Padding(
             padding:EdgeInsets.all(8),
             //the icon of the prayer
             child: Image.asset("images/icon.jpg"),
         ),
       )  ,
      actions: [IconButton(onPressed:(){
      showModalBottomSheet(context: context,
      builder: (BuildContext context)
      { //info icon by clicking on it it will get you the info of the app
        return bottomsheethelp();
      });
      }, icon:Icon(Icons.info_outline),color:Colors.white,iconSize:38,),],
      bottom: TabBar(
      labelStyle:TextStyle(fontStyle:FontStyle.italic,fontWeight: FontWeight.bold, fontSize: 25),
      controller: _tabController,
      indicator: PointTabIndicator(
      position: PointTabIndicatorPosition.bottom,
      color: Colors.white,
      insets: EdgeInsets.only(bottom: 9),
      ),
      tabs: tabList.map((item) {
      return Tab(
      text: item,
      );
      }).toList(),
      ) ,
      ),
          body: Stack(
      children:[
      TabBarView(
      controller: _tabController,
      //page will go to by the tab bar view
      children: [
      tab1(),
      tab2(),
      ],
      ),
      ],
      ),
      ),
    );
    }
  }

