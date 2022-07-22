import 'package:flutter/material.dart';
import 'todaydetail.dart';

class TextchatScreen extends StatefulWidget {
  @override
  _TextchatScreenState createState() => _TextchatScreenState();
}

class _TextchatScreenState extends State<TextchatScreen>{
  final titles = ["넷플릭스와 사는 집돌이", "꿈은 많고 놀고 싶습니다", "요리가 취미인 남자에 관하여","넷플릭스와 사는 집돌이"];
  final subtitles = [
    "3명이 댓글을 달았어요",
    "2명이 댓글을 달았어요",
    "3명이 댓글을 달았어요",
    "명이 댓글을 달았어요",
  ];
  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time, Icons.access_time];
  final times = ["1분전", "2분전", "4분전", "10분전",];

  @override
  Widget build(BuildContext context){
   return MaterialApp(
    theme: new ThemeData(accentColor: Colors.black,),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Color(0xffD2D2D2), 
            isScrollable: true,   
            tabs: <Widget>[
                Tab(text: "전체"),
                Tab(text: "베스트"),
                Tab(text: "연애"),
                Tab(text: "자랑"),
                Tab(text: "재태크"),
                Tab(text: "유머"),
              ],
          ),
      body:ListView.builder(

        
    
        itemCount: titles.length,
        itemBuilder: (context, index) {
          
          return Card(
              margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
              elevation: 0.0, 
                         
              child: ListTile(  
                  
                  onTap: () {
                  setState(() {
   
                    titles.add('List' + (titles.length+1).toString());
                    

                    subtitles.add('Here is list' + (titles.length+1).toString() + ' subtitle');
                    times.add('times');
                    });
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text(titles[index] + ' pressed!'),
                    ));
                  },


                  title: Text(titles[index], style: TextStyle(color: Color(0xff365859), fontWeight : FontWeight.w800)),
                  subtitle: Text(subtitles[index], style: TextStyle(color: Color(0xffC4C4C4))),
                  trailing: Text(times[index])
                  ));
        }))));
  }
}