import 'package:flutter/material.dart';
import 'package:sb7a/screens/quran/model.dart';
import 'package:sb7a/screens/quran/translationlist.dart';

class TransaltionTile extends StatelessWidget {
  final int index;
  final SurahTransalation surahTransalation;
  final Surah? surah;

  TransaltionTile({required this.index, required this.surahTransalation,this.surah});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(8)),
            boxShadow: [
              BoxShadow(
                blurRadius: 1,
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8))),
                ),
                Positioned(
                  top: 3,
                  left: 12,
                  child: Container(
                    padding: EdgeInsets.all(6),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.black, shape: BoxShape.circle),
                    child: Text(
                      surahTransalation.aya,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          surahTransalation.arabic_text,
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
