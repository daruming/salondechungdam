import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';  
import 'homeScreen.dart';


List<String> images = [  
 "assets/image/profile_detail1.png" 
];

class todaydetail extends StatefulWidget {
  @override
  _todaydetailState createState() => _todaydetailState();
}


class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Color(0xffF1F1F1),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: SingleChildScrollView( 
            child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClipOval(
                  child: Image.asset(
                    'assets/image/profile1.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
              ),
              Padding(
                  padding: const EdgeInsets.all(4.0),
              ),
              Text(
                      '강살롱',
                      style: TextStyle(
                      fontSize: 16.0, fontWeight : FontWeight.w800
                      ),
              ),
              Padding(
                  padding: const EdgeInsets.all(2.0),
              ),
              RaisedButton(
                      onPressed: () {},
                      padding: EdgeInsets.symmetric(horizontal: 30.0), //adds padding inside the button
                      child: Text("호감 보내기"),
                      color: Color(0xFF365859),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)
                      ),
              ),
              RaisedButton(
                      onPressed: () {},
                      child: Text("러브레터 보내기"),
                      color: Color(0xFF365859),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)
                      ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}

class _todaydetailState extends State<todaydetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,

      body: CustomScrollView(
        slivers: <Widget>[
          //# SliverAppBar #1
          SliverAppBar(
            floating: false,
            pinned: false,
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            expandedHeight: 290.0,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: ProfileCard()
            ),
          ),
          
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Text('질문 $index'),
                );
              },
              childCount: 6,
            ),
          ),

          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                color: Color(0xffF1F1F1),
                height: 250.0,
                child: Stack(
                      children: <Widget>[
                        Positioned.fill(
                            child: Image.asset(
                        "assets/image/profile_detail1.png",
                        fit: BoxFit.fitHeight,
                    ))
                  ],
                ),
              ),

              Container(
                child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                title: Padding(padding: const EdgeInsets.only(bottom: 15.0),
                child: Text('Q 자기소개 ?')),
                subtitle: Text('반갑습니다. 진지한 만남을 하고 싶어요. 티키타카가 잘 맞는 만남을 가지고 싶습니다 :) ')),
              ),

              Container(
                color: Color(0xffF1F1F1),
                height: 250.0,
                child: Stack(
                      children: <Widget>[
                        Positioned.fill(
                            child: Image.asset(
                        "assets/image/profile_detail2.png",
                        fit: BoxFit.fitHeight,
                    ))
                  ],
                ),
              ),

              Container(
                child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                title: Padding(padding: const EdgeInsets.only(bottom: 15.0),
                child: Text('Q 제 성격은 ?')),
                subtitle: Text('#상냥한 #유머있는 #지적인')),
              ),
              Container(
                child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                title: Padding(padding: const EdgeInsets.only(bottom: 15.0),
                child: Text('Q 평소에 가고 싶던 여행지는?')),
                subtitle: Text('휴양지로 떠나고 싶어요. 일상의 휴식이 필요해요.')),
              ),

              Container(
                color: Color(0xffF1F1F1),
                height: 250.0,
                child: Stack(
                      children: <Widget>[
                        Positioned.fill(
                            child: Image.asset(
                        "assets/image/profile_detail3.png",
                        fit: BoxFit.fitHeight,
                    ))
                  ],
                ),
              ),

              Container(
                child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                title: Padding(padding: const EdgeInsets.only(bottom: 15.0),
                child: Text('Q 요즘 어떤 것에 관심이 있나요?')),
                subtitle: Text('일찍 결혼하고 싶어요. 결혼에 관심이 있습니다.')),
              ),
            ]),
          ),

         SliverList(
            delegate: SliverChildListDelegate([
              Container(
                color: Color(0xffF1F1F1),
                
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 10),
                      RaisedButton(
                              padding: EdgeInsets.symmetric(horizontal: 30.0), //adds padding inside the button
                              onPressed: () {},
                              child: Text("호감 보내기"),
                              color: Color(0xFF365859),
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                              ),
                      ),
                      RaisedButton(
                              onPressed: () {},
                              child: Text("러브레터 보내기"),
                              color: Color(0xFF365859),
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)
                              ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
            onPressed: () {},
            child: Icon(Icons.star_border,size: 30.0),
            style: TextButton.styleFrom(primary: Color(0xffD2D2D2)),
            ),
            TextButton(
            onPressed: () {},
            child: Icon(Icons.star_border,size: 30.0),
            style: TextButton.styleFrom(primary: Color(0xffD2D2D2)),
            ),
            TextButton(
            onPressed: () {},
            child: Icon(Icons.star_border,size: 30.0),
            style: TextButton.styleFrom(primary: Color(0xffD2D2D2)),
            ),
            TextButton(
            onPressed: () {},
            child: Icon(Icons.star_border,size: 30.0),
            style: TextButton.styleFrom(primary: Color(0xffD2D2D2)),
            ),
            TextButton(
            onPressed: () {},
            child: Icon(Icons.star_border,size: 30.0),
            style: TextButton.styleFrom(primary: Color(0xffD2D2D2)),
            ),
          ],
        ),
      ),
    );
  }
}