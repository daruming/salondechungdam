import 'package:flutter/material.dart';
import 'package:salonde_c/chatScreen.dart';
import 'package:salonde_c/favoriteScreen.dart';
import 'package:salonde_c/mainScreen.dart'; 
import 'package:salonde_c/loveletterScreen2.dart';
import 'package:salonde_c/loveletterScreen.dart'; 
import 'package:salonde_c/discoveryScreen.dart';
import 'todaydetail.dart';

void main() => runApp(homeScreen());  

class homeScreen extends StatefulWidget{
  _homeScreen createState() => _homeScreen();
}

String title_string = "Home";

class _homeScreen extends State<homeScreen> {  
  int pageIndex = 0;
  List<Widget> pageList = <Widget>[
    MainScreen(),
    FavoriteScreen(),
    ChatScreen(),
    LoveletternewScreen(),
    DiscoveryScreen(),
  ];



  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(  
        appBar: AppBar(
          centerTitle: true, // this is all you need
          toolbarHeight: 60, // Set this height
          /*leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
              print('menu button is clicked');
            },
          ),*/
          title: Text((title_string),style: TextStyle(fontFamily: 'Abhaya Libre', fontWeight : FontWeight.w700, fontSize: 36.0)),
          elevation: 0.5,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          /*actions: [
            Icon(
              Icons.person, 
              size: 35.0),
          ],*/
        ), 
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                ),
                title: const Text('Page 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.train,
                ),
                title: const Text('Page 2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ), 
        body: pageList[pageIndex],          
        bottomNavigationBar: BottomNavigationBar(    
          currentIndex: pageIndex,  
          onTap: (value){
            setState((){
              pageIndex = value;
              switch(pageIndex) { 
                case 0: { title_string = 'Home'; } 
                break; 
                case 1: { title_string = 'Favorite'; } 
                break;
                case 2: { title_string = 'Salon'; } 
                break;
                case 3: { title_string = 'Love letter'; } 
                break; 
                case 4: { title_string = 'Discovery'; } 
                break; 
                } 
            });
          },      
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,         
          items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'home',
                     ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.favorite),
                      label: 'favorite',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.forum),
                      label: 'forum',
                    ),
                     BottomNavigationBarItem(
                      icon: Icon(Icons.reviews),
                      label: 'reviews',
                    ),
                    BottomNavigationBarItem(               
                      icon: Icon(Icons.public),
                      label: 'public',
                    ),
                  ],
                  selectedItemColor: Colors.amber[200],
                ),
      )
    );
  }
}

