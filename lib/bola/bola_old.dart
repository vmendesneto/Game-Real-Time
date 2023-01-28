import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:game_real_time/Providers/bola_provider.dart';

class BolaOld extends ConsumerStatefulWidget {
  const BolaOld({Key? key}) : super(key: key);

  @override
  _BolaOldState createState() => _BolaOldState();
}

class _BolaOldState extends ConsumerState<BolaOld> {
  //Bola
  //NO Alignment mudar o X e Y da posição da bola
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    final bola = ref.watch(bolaProvider);
    return Align(
        alignment: Alignment(bola.x_old, bola.y_old),
        child: Container(
            height: _height * 0.024,
            width: _width * 0.033,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(100),
            )));
  }
}

