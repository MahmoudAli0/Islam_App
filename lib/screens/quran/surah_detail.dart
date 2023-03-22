import 'package:flutter/material.dart';
import 'package:sb7a/constants/constants.dart';
import 'package:sb7a/screens/quran/api_service.dart';
import 'package:sb7a/screens/quran/model.dart';
import 'package:sb7a/screens/quran/transaltion_tile.dart';
import 'package:sb7a/screens/quran/translationlist.dart';

class SourahDetail extends StatefulWidget {
  const SourahDetail({Key? key}) : super(key: key);

  @override
  State<SourahDetail> createState() => _SourahDetailState();
}

class _SourahDetailState extends State<SourahDetail> {
  ApiService _apiService = ApiService();
  Surah? surah;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0.0,

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder(
          future: _apiService.getTransaltion(Constants.SurahIndex),
          builder: (context, AsyncSnapshot<SurahTransalationList> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.transalationList.length,
                  itemBuilder: (context, index) {
                    return TransaltionTile(
                        index: index,
                        surahTransalation:
                            snapshot.data!.transalationList[index]);
                  });
            } else {
              return Center(
                child: Text('لا يوجد اتصال بالانترنت ',style: TextStyle(color: Colors.grey),),
              );
            }
          },
        ),
      ),
    );
  }
}
