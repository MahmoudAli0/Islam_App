class Surah {
  int? number;
  String name='';
  String englishName='';
  String englishNameTranslation='';
  int? numberOfAyahs;
  String? revelationType;

  Surah(this.number, this.name, this.englishName, this.englishNameTranslation,
      this.numberOfAyahs, this.revelationType);

 factory Surah.frmJson(Map<String, dynamic> json) {
    return Surah(
        json['number'],
        json['name'],
        json['englishName'],
        json['englishNameTranslation'],
        json['numberOfAyahs'],
        json['revelationType']);
  }
}
