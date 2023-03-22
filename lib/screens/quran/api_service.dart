
import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:http/http.dart';
import 'package:sb7a/screens/quran/model.dart';
import 'package:sb7a/screens/quran/translationlist.dart';

class ApiService{
  final endPointUrl='http://api.alquran.cloud/v1/surah';
  List<Surah> list=[];

  Future<List<Surah>> getSurah()async{
    Response response= await http.get(Uri.parse(endPointUrl));

    if(response.statusCode ==200){
      Map<String,dynamic> json=jsonDecode(response.body);
      json['data'].forEach((element){
        if(list.length<114){
          list.add(Surah.frmJson(element));
        }
      });
      print(list.length);
      return list;
    }else{
      throw('can\'t get the Surah');
    }
  }

  Future<SurahTransalationList> getTransaltion(int index) async{
    final url='https://quranenc.com/api/translation/sura/urdu_junagarhi/$index';
    var res= await http.get(Uri.parse(url));
    
    return SurahTransalationList.fromJson(json.decode(res.body));
  }
}