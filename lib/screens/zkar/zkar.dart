import 'package:flutter/material.dart';

class Azkar_Screen extends StatelessWidget {
  List<String> azkarImages = [
    'images/morninng.jpg',
    'images/night.jpg',
    'images/azkar_praying.png',
    'images/wake.png',
  ];
  List<String> azkarTitles = [
    'اذكار الصباح',
    'اذكار المساء',
    'اذكار الصلاة',
    'اذكار النوم ',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('الاذكار'),
      ),
      body: Column(
        children: [
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 1.0,
            mainAxisSpacing: 1.0,
            childAspectRatio: 1 / 1.1,
            shrinkWrap: true,
            children: List.generate(
                azkarImages.length,
                (index) => GestureDetector(
                    onTap: () {}, child: buildAzkarItem(index))),
          ),
          Expanded(
            child: Image(
              image: AssetImage('images/bg_azkar.png'),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildAzkarItem(index) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image(image: AssetImage('${azkarImages[index]}'),width: 90,height: 70,),
            ),
            SizedBox(
              height: 10,
            ),
            Text('${azkarTitles[index]}'),
          ],
        ),
      ),
    );
  }
}
//Image(image: AssetImage('images/praying_azkar.jpg'),)
