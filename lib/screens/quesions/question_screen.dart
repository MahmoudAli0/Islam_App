import 'package:flutter/material.dart';
import 'package:sb7a/screens/quesions/rasols.dart';
import 'package:sb7a/screens/quesions/relgion.dart';

class Questions extends StatelessWidget {

  List<String> images = [
    'images/question-mark.png',//6
    'images/question-mark.png',//6
    'images/question-mark.png',//6
    'images/question-mark.png',//6
    'images/question-mark.png',//6
    'images/question-mark.png',//6
  ];
  List<String> titles = [
    ' اسئلة دينية  ',//1
    'اسئلة عن الانبياء ',//2
    'اسئلة في القرأن ',//3
    'اسئلة عن الذكاء ',//4
    'اسئلة عن الصلاة ',//4
    'اسئلة عن الصحابة ',//4
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          elevation: .3,
          title: Text('اسئلة ',textAlign: TextAlign.center,),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 1.0,
          mainAxisSpacing: 1.0,
          childAspectRatio: 1 / 1.1,
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          children: List.generate(titles.length, (index) => GestureDetector(
            onTap: (){
              switch(index){
                case 1:
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Rasols()));
                  break;
                case 0:
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Relgion_Screen()));
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
              width: 70,
              height: 75,
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
