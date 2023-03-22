

import 'package:flutter/material.dart';
import 'package:sb7a/screens/asmaa/asmaa_screen.dart';
import 'package:sb7a/screens/masb7a/masb7a_screen.dart';
import 'package:sb7a/screens/quesions/question_screen.dart';
import 'package:sb7a/screens/quran/quran_screen.dart';
import 'package:sb7a/screens/zkar/zkar.dart';

class HomeScreen extends StatelessWidget {
  List<String> images = [
    'images/book.png',//1
    'images/pray.png',//2
    'images/quran.png',//3
    'images/zkar.jpg',//4
    'images/allah.jpg',//5
    'images/question-mark.png',//6
    'images/ramadan.png',//7
    'images/ahades.png',//8
    'images/moon.png',//8
    'images/mohamed.png',//9
    'images/msbha.png',//10
  ];
  List<String> titles = [
    'قصص الانبياء ',//1
    'ادعية',//2
    'قران',//3
    'اذكار',//4
    'اسماء الله الحسني',//5
    'أسئلة ',//6
    'رمضان كريم',//7
    'احاديث الرسول ',//8
    'احاديث رمضان ',//8
    'سيرة الرسول',//9
    'المسبحة ',//10
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          elevation: .3,
        ),
        body: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 1.0,
          mainAxisSpacing: 1.0,
          childAspectRatio: 1 / 1.55,
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          children: List.generate(titles.length, (index) => GestureDetector(
            onTap: (){
              switch(index){
                case 4:
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AsmaaScreen()));
                  break;
                case 3 :
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Azkar_Screen()));
                  break;
                case 5 :
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Questions()));
                  break;
                case 10:
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Masbha_Screen()));
                  break;
                case 2:
                  Navigator.push(context, MaterialPageRoute(builder: (context) => QuranScreen()));
                  break;


              }
            },
              child: buildListItem(index))),
        ));
  }

  Widget buildListItem(index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('${images[index]}'),
              width: 75,
              height: 100,
            ),
            Text(
              '${titles[index]} ',
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
//
