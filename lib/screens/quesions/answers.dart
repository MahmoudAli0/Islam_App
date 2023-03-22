import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sb7a/screens/quesions/rasols.dart';

class AnswersScreen extends StatelessWidget {
   final List<String> questionRa;
   final List<String> answersRa;
   final int index;
   final Widget screen;
   AnswersScreen({required this.questionRa,required this.answersRa,required this.index,required this.screen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          screen,
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 300,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.lightGreen
                ),
                child: Card(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Rasols()));
                            },
                            child: Text(
                              '×',
                              style: TextStyle(color: Colors.red, fontSize: 20),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Text('الاجابة ',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('${questionRa[index]}',style: TextStyle(fontSize: 18,color: CupertinoColors.activeGreen),),
                      SizedBox(
                        height: 20,
                      ),
                      Text('${answersRa[index]} ',textAlign: TextAlign.center,),
                      SizedBox(height: 20,),
                      Row(

                        children: [
                          Icon(Icons.share,color: Colors.lightGreen,),
                          SizedBox(width: 20,),
                          Icon(Icons.save,color: Colors.lightGreen,),
                          SizedBox(width: 20,),
                          Icon(Icons.share,color: Colors.lightGreen,),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
