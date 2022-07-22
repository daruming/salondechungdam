import 'package:flutter/material.dart';
import 'todaydetail.dart';
 
class PassawayScreen extends StatefulWidget {
  @override
  _PassawayScreenState createState() => _PassawayScreenState();
}

class _PassawayScreenState extends State<PassawayScreen>{
  List<String> images = [  
    "assets/image/image1_mask.png",  "assets/image/image4_mask.png",   
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
                  child: Column(
                   children: [
                    
                    Image.asset(images[index]),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        
                        height: 60,
                        alignment: Alignment.center,
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