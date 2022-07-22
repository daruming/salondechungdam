import 'package:flutter/material.dart';
import 'todaydetail.dart';

class MatchedScreen extends StatefulWidget {
  @override
  _MatchedScreenState createState() => _MatchedScreenState();
}

class _MatchedScreenState extends State<MatchedScreen>{
  List<String> images = [  
    "assets/image/image2.png",  "assets/image/image5.png",   
  ];
  List<String> names= [
   "강살롱", "유살롱",
  ]; 
  List<String> profiles = [
    "24살 | 배우 | ESFJ","24살 | 배우 | ESFJ"
  ]; 

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: Scaffold(  
        body: GridView.builder(  
          itemCount: images.length,  
          padding: EdgeInsets.all(15),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,  
            childAspectRatio: 1/ 1.73,
            crossAxisSpacing: 12.0,  
            mainAxisSpacing: 12.0
            ),
            itemBuilder: (BuildContext context, int index)=>
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => todaydetail(),
                 )),
                child: Container(
                  color: Colors.white,
                  child: Column(
                   children: [
                    
                    Image.asset(images[index]),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0), child: Text(
                              names.elementAt(index),
                              style: TextStyle(fontSize: 16.0, fontFamily: 'Gothic A1', fontWeight : FontWeight.w600)
                            ))),
                          Expanded(child: Text(
                              profiles.elementAt(index),
                              style: TextStyle(fontSize: 10.0, fontFamily: 'Gothic A1', fontWeight : FontWeight.w400))),
                        ]
                      ),
                      ),
                    ],
                  ),
                ),
              ),
        ),   
       ),
    );
  }
}