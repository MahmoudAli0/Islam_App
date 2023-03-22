class SurahTransalationList{
  final List<SurahTransalation> transalationList;

  SurahTransalationList({required this.transalationList});

  factory SurahTransalationList.fromJson(Map<String,dynamic> map){
    Iterable transalation =map['result'];
    List<SurahTransalation> list =transalation.map((e) => SurahTransalation.fromJson(e)) .toList();
    print(list.length);
    return SurahTransalationList(transalationList: list);
  }
}

class SurahTransalation{
String sura='';
String aya='';
String arabic_text='';
String translation='';

SurahTransalation(this.sura, this.aya, this.arabic_text, this.translation);

factory SurahTransalation.fromJson(Map<String,dynamic> json){
  return SurahTransalation(
    json['sura'],
    json['aya'],
    json['arabic_text'],
    json['translation'],
  );
}


}