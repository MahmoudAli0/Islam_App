import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sb7a/screens/quran/model.dart';

Widget SurahCustomListTile(
{
  required Surah surah,
  required BuildContext context,
  required VoidCallback onTap,
})
{
return GestureDetector(
  onTap: onTap,
  child: Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 3
        )
      ]
    ),
    child: Column(
      children: [
        Row(
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 45,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.lightGreen
              ),
              child: Text((surah.number).toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(surah.englishName,style: TextStyle(fontWeight: FontWeight.bold),),
                Text(surah.englishNameTranslation,),
              ],
            ),
            Spacer(),
            Text('${surah.name}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.black54),),
          ],
        )
      ],
    ),
  ),
);
}