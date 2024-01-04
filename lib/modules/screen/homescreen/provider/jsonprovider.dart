// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// import '../model/jsonmpdel.dart';
//
// class ChapterJsonDecodeProvider extends ChangeNotifier {
//   Jsonmodel jsonmodel = Jsonmodel(ch: null);
//
//   get shlokIndex => null;
//
//   englishLanguage() {
//     Jsonmodel.json(data: gujaratiLanguage())[shlokIndex].translation =
//         jsonmodel.san[].english;
//     notifyListeners();
//   }

//   hindiLanguage() {
//     shlokJsonDecodeModel.allShloks[shlokIndex].translation =
//         shlokJsonDecodeModel.allShloks[shlokIndex].hindi;
//     notifyListeners();
//   }
//
//   gujaratiLanguage() {
//     var shlokJsonDecodeModel;
//     shlokJsonDecodeModel.allShloks[shlokIndex].translation =
//         shlokJsonDecodeModel.allShloks[shlokIndex].gujarati;
//     notifyListeners();
//   }
//
//   Future<void> loadJSON() async {
//     var chapterJsonDecodeModel;
//     chapterJsonDecodeModel.data =
//         await rootBundle.loadString('lib/utils/json/all_chapters.json');
//
//     chapterJsonDecodeModel.decodedList =
//         jsonDecode(chapterJsonDecodeModel.data);
//
//     chapterJsonDecodeModel.allChapter = chapterJsonDecodeModel.decodedList
//         .map(
//           (e) => AllChapterModel.fromMap(
//             data: e,
//           ),
//         )
//         .toList();
//     notifyListeners();
//   }
// }
//
//
