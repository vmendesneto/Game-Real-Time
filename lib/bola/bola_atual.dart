
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:game_real_time/Providers/bola_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


// class BolaAtual extends ConsumerStatefulWidget {
//
//
//    BolaAtual({Key? key}) : super(key: key);
//
//
//
//   @override
//   _BolaAtualState createState() => _BolaAtualState();
// }
//
// class _BolaAtualState extends ConsumerState<BolaAtual> {
//
//
//   //Bola
//   //NO Alignment mudar o X e Y da posição da bola
//   @override
//   Widget build(BuildContext context) {
//     final _width = MediaQuery
//         .of(context)
//         .size
//         .width;
//     final _height = MediaQuery
//         .of(context)
//         .size
//         .height;
//     final bola = ref.watch(bolaProvider);
//
//     return Align(
//         alignment: Alignment(bola.x_atual!, bola.y_atual!),
//         child: Container(
//             height: _height * 0.024,
//             width: _width * 0.033,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(100),
//             )));
//   }
//
//
// }
// class teste {
//   double? x;
//   double? y;
//
//
//   bolax() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     x = prefs.getDouble('x') != null ? prefs.getDouble('x'): 0.0;
//     y = prefs.getDouble('y') != null? prefs.getDouble('y') : 0.0;
//   }
//
//
//   Widget bolaAtualW() {
//     // final _width = MediaQuery
//     //     .of(context)
//     //     .size
//     //     .width;
//     // final _height = MediaQuery
//     //     .of(context)
//     //     .size
//     //     .height;
//
//     return Align(
//         alignment: Alignment(x!, y!),
//         child: Container(
//             height: 25,
//             //_height * 0.024,
//             width: 75,
//             //_width * 0.033,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(100),
//             )));
//   }
// }
