import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
class timeforsalah extends StatefulWidget {
  @override
  _timeforsalahState createState() => _timeforsalahState();
}
//this tab is for paryer time schedule
class _timeforsalahState extends State<timeforsalah> {
  getazan() async{
    var url=Uri.parse("https://api.pray.zone/v2/times/today.json?city=cairo");
    var response=await http.get(url);
    var responsebody=jsonDecode(response.body)["results"]["datetime"][0];
    return responsebody;

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.white,
      //background color
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:3,horizontal: 5),

        child: FutureBuilder(
          future: getazan(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {

           if(snapshot.hasData)
             {
              return ListView(
                //make listview for each row of paryer name and time
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(snapshot.data["date"]["hijri"], style:TextStyle(
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
                          child: Text( "Fajr: ",textAlign:TextAlign.left,
                            style: TextStyle(fontSize: 20,color: Colors.black87,fontWeight: FontWeight.w600),),
                        ),
                        Expanded(
                          flex:40,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text( snapshot.data["times"]["Fajr"],textAlign:TextAlign.right,
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
                            child: Text(snapshot.data["times"]["Dhuhr"],textAlign:TextAlign.right,
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
                            child: Text(snapshot.data["times"]["Asr"],textAlign:TextAlign.right,
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
                            child: Text(snapshot.data["times"]["Maghrib"],textAlign:TextAlign.right,
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
                            child: Text(snapshot.data["times"]["Isha"],textAlign:TextAlign.right,
                              style: TextStyle(fontSize: 20,color: Colors.black87,fontWeight: FontWeight.w600),),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              );
             }
           else
             {
               return Center(
                 child: CircularProgressIndicator(),
               );
             }
        },
          )
        ),
      );

  }
}
