// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:neuox/api/get_mode.dart';

// class Texst extends StatefulWidget {
//   const Texst({Key? key}) : super(key: key);

//   @override
//   State<Texst> createState() => _TexstState();
// }

// class _TexstState extends State<Texst> {
//   Indivdualpost? result1;

//   _getdata1() async {
//     print("Dsdsad");
//     http.Response result = await http.get(
//       Uri.parse("http://learningapp.e8demo.com/api/home_page/"),
//       // headers: {
//       //   HttpHeaders.authorizationHeader: "bearer " + tocken,
//       // },
//     );
//     final body = json.decode(result.body);

//     // var data = json.decode(result.body);
//     if (mounted)
//       setState(() {
//         result1 = Indivdualpost.fromJson(body);
//       });
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _getdata1();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: result1 != null
//               ? Column(
//                   children: [
//                     // Text(result1!.banner.bannerTitle.toString()),
//                     // Text(result1!.banner.banner.toString()),
//                     // Text(result1!.message.toString()),
//                     // Text(result1!.horizontalSlider[0].heading.toString()),
//                     // Text(result1!.horizontalSlider[0].nameSlug.toString()),
//                     // Text(result1!.horizontalSlider[0].data![0].title.toString()),
//                     // Text(result1!.horizontalSlider[0].data![0].description.toString()),

//                     // Text(result1!.horizontalSlider[0].data![0].listingImage.toString()),
//                     Container(
//                       height: 200,
//                       width: 300,
//                       decoration: BoxDecoration(
//                         color: const Color(0xff7c94b6),
//                         image: DecorationImage(
//                           image: NetworkImage("http://learningapp.e8demo.com" +
//                               result1!.horizontalSlider[0].data![0].listingImage
//                                   .toString()),
//                           fit: BoxFit.cover,
//                         ),
//                         border: Border.all(
//                           color: Colors.black,
//                           width: 8,
//                         ),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                     Column(
//                       children: [
//                         Text(result1!.horizontalSlider[0].data![0].id.toString()),
//                         Text(result1!.horizontalSlider[0].data![0].title.toString()),
//                         Text(result1!.horizontalSlider[0].data![0].description.toString()),
//                         Text(result1!.horizontalSlider[0].data![0].price.toString())
//                       ],
//                     )
//                   ],
//                 )
//               : Container()),
//     );
//   }
// }
