class Jsonmodel {
  int chapterIndex = 0;
  int shlokIndex = 0;

  String verse;
  String san;
  String en;
  String hi;
  String guj;
  int ch;

  Jsonmodel({
    required this.ch,
    required this.en,
    required this.guj,
    required this.hi,
    required this.san,
    required this.verse,
  });

  factory Jsonmodel.json({required Map data}) {
    return Jsonmodel(
        ch: data['ch'],
        en: data['en'],
        guj: data['guj'],
        hi: data['hi'],
        san: data['san'],
        verse: data['verse']);
  }
}
