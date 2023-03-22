import 'package:flutter/material.dart';
import 'package:sb7a/constants/constants.dart';
import 'package:sb7a/screens/quran/api_service.dart';
import 'package:sb7a/screens/quran/model.dart';
import 'package:sb7a/screens/quran/surah_custom_List_tile.dart';
import 'package:sb7a/screens/quran/surah_detail.dart';

class QuranScreen extends StatefulWidget {
  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  ApiService apiService = ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('القران الكريم '),
      ),
      body: FutureBuilder(
        future: apiService.getSurah(),
        builder: (context, AsyncSnapshot<List<Surah>> snapshot) {
          if (snapshot.hasData) {
            List<Surah>? surah = snapshot.data;
            return ListView.builder(
              itemBuilder: (context, index) => SurahCustomListTile(
                  surah: surah[index], context: context, onTap: () {
                    setState(() {
                      Constants.SurahIndex=(index +1);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SourahDetail()));
                    });
              }),
              itemCount: surah!.length,
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
