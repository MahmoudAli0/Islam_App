import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Masbha_Screen extends StatefulWidget {
  @override
  State<Masbha_Screen> createState() => _Masbha_ScreenState();
}

class _Masbha_ScreenState extends State<Masbha_Screen> {
  List<String> tasbih = [
    'سبحان الله',
    'الحمدلله ',
    'الله اكبر ',
    'استغفر الله',
  ];
  Map<String ,bool> values={
    'سبحان الله':false,
    'الحمدلله ':false,
    'الله اكبر ':false,
    'استغفر الله':false
  };

  String selected = 'سبحان الله';
  int counter = 0;
  bool checkbox=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        actions: [
          DropdownButton(
            items: tasbih.map((item) {
              return DropdownMenuItem(
                child: Text(item),
                value: item,
              );
            }).toList(),
            onChanged: ((value) {
              setState(() {
                selected = value!;
              });
            }),
            value: selected,
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColorizeAnimatedTextKit(
                text: ['المسبحة الالكترونية '],
                textStyle: TextStyle(fontSize: 30),
                textAlign: TextAlign.start,
                colors: [Colors.purple, Colors.blue, Colors.red],
            ),
            Stack(
              children: [
                Image(
                  image: AssetImage('images/msbha.png'),
                  width: 300,
                  height: 190,
                ),
                Positioned(
                    top: 54,
                    right: 100,
                    child: Text(
                      '${counter}',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  child: Text(
                    'تسبيح ',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  onPressed: () {
                    setState(() {
                      counter = 0;
                    });
                  },
                  child: Text(
                    'اعادة ',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),
            Expanded(child: ListView(
              children:
                values.keys.map((valuee) {
                  return CheckboxListTile(
                      title: Text(valuee),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: values[valuee],
                      activeColor: Colors.amber,
                      onChanged: (value){
                        setState(() {
                          values[valuee]=value!;
                        });
                      });
                }).toList()

            ))
          ],
        ),
      ),
    );
  }
}
