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

//
// // class ChapterJsonDecodeModel {
// //   String data;
// //   List decodedList;
// //   List allChapter;
// //
// //   ChapterJsonDecodeModel({
// //     required this.data,
// //     required this.decodedList,
// //     required this.allChapter,
// //   });
// // }
// //
// // class ShlokJsonDecodeModel {
// //   String data;
// //   List decodedList;
// //   List allShloks;
// //
// //   ShlokJsonDecodeModel({
// //     required this.data,
// //     required this.decodedList,
// //     required this.allShloks,
// //   });
// // }
//
// // import 'package:flutter/material.dart';
// // import 'package:flutter/rendering.dart';
// //
// // import '../../../../utils/json_model.dart';
// //
// // class detailsscreen extends StatefulWidget {
// //   const detailsscreen({super.key});
// //
// //   @override
// //   State<detailsscreen> createState() => _detailsState();
// // }
// //
// // class _detailsState extends State<detailsscreen> {
// //   bool English = false;
// //   bool Hindi = false;
// //   bool Gujarti = false;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     jsonmodel jsm = ModalRoute.of(context)!.settings.arguments as jsonmodel;
// //     return Scaffold(
// //       body: Stack(
// //         children: [
// //           Container(
// //             height: double.infinity,
// //             width: double.infinity,
// //             decoration: BoxDecoration(
// //               image: DecorationImage(
// //                 image: NetworkImage(
// //                     "https://iphoneswallpapers.com/wp-content/uploads/2023/03/Cute-Krishna-iPhone-Wallpaper-HD.jpg"),
// //                 fit: BoxFit.cover,
// //               ),
// //             ),
// //           ),
// //           SingleChildScrollView(
// //             child: Column(
// //               children: [
// //                 SizedBox(
// //                   height: 150,
// //                 ),
// //                 Container(
// //                   margin: EdgeInsets.all(10),
// //                   height: 200,
// //                   width: double.infinity,
// //                   decoration: BoxDecoration(
// //                       borderRadius: BorderRadius.circular(25),
// //                       image: DecorationImage(
// //                           image: NetworkImage(
// //                               "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB_KiOPWBICa6yQw4FmJ6t3BaA27gjnf_DmnfKb3aKqA9RLBlSun7L2MLN3iMlAmLFqp4&usqp=CAU"),
// //                           fit: BoxFit.cover,
// //                           opacity: 0.75)),
// //                   child: Center(
// //                     child: Text(
// //                       jsm.san,
// //                       style: TextStyle(fontSize: 18, color: Colors.white),
// //                     ),
// //                   ),
// //                 ),
// //                 Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //                   children: [
// //                     GestureDetector(
// //                       onTap: () {
// //                         setState(() {
// //                           English = !English;
// //                         });
// //                       },
// //                       child: Container(
// //                         height: 40,
// //                         width: 80,
// //                         decoration: BoxDecoration(
// //                           color: Colors.white,
// //                           borderRadius: BorderRadius.circular(40),
// //                           image: DecorationImage(
// //                               image: NetworkImage(
// //                                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbiOEPJOf6BMDUv0Hk_NVqHrSWdAVFjo7Ojw&usqp=CAU"),
// //                               fit: BoxFit.cover),
// //                         ),
// //                         child: Center(
// //                             child: Text(
// //                               "English",
// //                               style: TextStyle(color: Colors.white),
// //                             )),
// //                       ),
// //                     ),
// //                     GestureDetector(
// //                       onTap: () {
// //                         setState(() {
// //                           Hindi = !Hindi;
// //                         });
// //                       },
// //                       child: Container(
// //                         height: 40,
// //                         width: 80,
// //                         decoration: BoxDecoration(
// //                           color: Colors.white,
// //                           borderRadius: BorderRadius.circular(40),
// //                           image: DecorationImage(
// //                               image: NetworkImage(
// //                                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbiOEPJOf6BMDUv0Hk_NVqHrSWdAVFjo7Ojw&usqp=CAU"),
// //                               fit: BoxFit.cover),
// //                         ),
// //                         child: Center(
// //                             child: Text(
// //                               "Hindi",
// //                               style: TextStyle(color: Colors.white),
// //                             )),
// //                       ),
// //                     ),
// //                     GestureDetector(
// //                       onTap: () {
// //                         setState(() {
// //                           Gujarti = !Gujarti;
// //                         });
// //                       },
// //                       child: Container(
// //                         height: 40,
// //                         width: 80,
// //                         decoration: BoxDecoration(
// //                             color: Colors.white,
// //                             borderRadius: BorderRadius.circular(40),
// //                             image: DecorationImage(
// //                                 image: NetworkImage(
// //                                     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbiOEPJOf6BMDUv0Hk_NVqHrSWdAVFjo7Ojw&usqp=CAU"),
// //                                 fit: BoxFit.cover)),
// //                         child: Center(
// //                             child: Text(
// //                               "Gujarti",
// //                               style: TextStyle(color: Colors.white),
// //                             )),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //                 (English == true)
// //                     ? Container(
// //                   margin: EdgeInsets.all(10),
// //                   height: 200,
// //                   width: double.infinity,
// //                   padding: EdgeInsets.all(8),
// //                   decoration: BoxDecoration(
// //                       borderRadius: BorderRadius.circular(25),
// //                       image: DecorationImage(
// //                           image: NetworkImage(
// //                               "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB_KiOPWBICa6yQw4FmJ6t3BaA27gjnf_DmnfKb3aKqA9RLBlSun7L2MLN3iMlAmLFqp4&usqp=CAU"),
// //                           fit: BoxFit.cover,
// //                           opacity: 0.75)),
// //                   child: Center(
// //                     child: Text(
// //                       jsm.en,
// //                       style: TextStyle(fontSize: 16, color: Colors.white),
// //                     ),
// //                   ),
// //                 )
// //                     : Container(),
// //                 (Hindi == true)
// //                     ? Container(
// //                   margin: EdgeInsets.all(10),
// //                   height: 200,
// //                   width: double.infinity,
// //                   padding: EdgeInsets.all(8),
// //                   decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(25),
// //                     image: DecorationImage(
// //                         image: NetworkImage(
// //                             "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB_KiOPWBICa6yQw4FmJ6t3BaA27gjnf_DmnfKb3aKqA9RLBlSun7L2MLN3iMlAmLFqp4&usqp=CAU"),
// //                         fit: BoxFit.cover,
// //                         opacity: 0.75),
// //                   ),
// //                   child: Center(
// //                     child: Text(
// //                       jsm.hi,
// //                       style: TextStyle(fontSize: 16, color: Colors.white),
// //                     ),
// //                   ),
// //                 )
// //                     : Container(),
// //                 (Gujarti == true)
// //                     ? Container(
// //                   margin: EdgeInsets.all(10),
// //                   height: 200,
// //                   width: double.infinity,
// //                   padding: EdgeInsets.all(8),
// //                   decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(25),
// //                     image: DecorationImage(
// //                         image: NetworkImage(
// //                             "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB_KiOPWBICa6yQw4FmJ6t3BaA27gjnf_DmnfKb3aKqA9RLBlSun7L2MLN3iMlAmLFqp4&usqp=CAU"),
// //                         fit: BoxFit.cover,
// //                         opacity: 0.75),
// //                   ),
// //                   child: Center(
// //                     child: Text(
// //                       jsm.guj,
// //                       style: TextStyle(fontSize: 16, color: Colors.white),
// //                     ),
// //                   ),
// //                 )
// //                     : Container(),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
