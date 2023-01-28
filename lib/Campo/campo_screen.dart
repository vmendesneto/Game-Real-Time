import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:game_real_time/Providers/bola_provider.dart';
import 'package:game_real_time/bola/bola_old.dart';

import '../bola/bola_atual.dart';

class CampoScreen extends ConsumerStatefulWidget {
  const CampoScreen({
    Key? key,
  }) : super(key: key);

  @override
  _CampoScreenState createState() => _CampoScreenState();
}

class _CampoScreenState extends ConsumerState<CampoScreen> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    final bolaState = ref.watch(bolaProvider);
    final bola = ref.watch(bolaProvider.notifier);

    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.black,
          title: const Text(
            "Jogo Ao Vivo",
            textAlign: TextAlign.center,
          ),
        ),
        body: RawKeyboardListener(
            focusNode: FocusNode(),
            autofocus: true,
            child: Container(
                color: Colors.greenAccent,
                width: _width,
                height: _height,
                child: Center(
                    child: Stack(children: [
                  Column(children: [
                    Expanded(
                        child: Container(
                            width: _width,
                            color: Colors.green,
                            margin: const EdgeInsets.only(
                                top: 3.0, left: 3.0, right: 3.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      height: _height * 0.2,
                                      width: _width * 0.5,
                                      color: Colors.transparent,
                                      child: Stack(children: [
                                        //Pequena Area
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                height: _height * 0.05,
                                                width: _width * 0.2,
                                                decoration: const BoxDecoration(
                                                    //color: Colors.white,
                                                    border: Border(
                                                        bottom: BorderSide(
                                                            color: Colors
                                                                .greenAccent,
                                                            width: 3.0),
                                                        left: BorderSide(
                                                            color: Colors
                                                                .greenAccent,
                                                            width: 3.0),
                                                        right: BorderSide(
                                                            color: Colors
                                                                .greenAccent,
                                                            width: 3.0))))),
                                        //Penalty
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: _height * 0.009,
                                                width: _width * 0.015,
                                                decoration: BoxDecoration(
                                                  color: Colors.greenAccent,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                ))),
                                        //Grande Area
                                        Container(
                                            decoration: const BoxDecoration(
                                                //color: Colors.white,
                                                border: Border(
                                                    bottom: BorderSide(
                                                        color:
                                                            Colors.greenAccent,
                                                        width: 3.0),
                                                    left: BorderSide(
                                                        color:
                                                            Colors.greenAccent,
                                                        width: 3.0),
                                                    right: BorderSide(
                                                        color:
                                                            Colors.greenAccent,
                                                        width: 3.0))),
                                            margin: const EdgeInsets.only(
                                                bottom: 32.5,
                                                left: 20.0,
                                                right: 20.0)),
                                        //Meia Lua
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                height: _height * 0.045,
                                                width: _width * 0.15,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            Colors.greenAccent,
                                                        width: 3.0),
                                                    color: Colors.transparent,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(
                                                              _width * 0.1),
                                                      bottomRight:
                                                          Radius.circular(
                                                              _width * 0.1),
                                                    )))),
                                      ])),
                                  //Circulo Central
                                  Container(
                                    alignment: Alignment.center,
                                    height: _height * 0.06,
                                    width: _width * 0.2,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.greenAccent,
                                            width: 3.0),
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.only(
                                          topLeft:
                                              Radius.circular(_width * 0.2),
                                          topRight:
                                              Radius.circular(_width * 0.2),
                                        )),
                                  ),
                                ]))),
                    Expanded(
                        child: Container(
                            width: _width,
                            color: Colors.green,
                            margin: const EdgeInsets.only(
                                top: 1.0, left: 3.0, right: 3.0, bottom: 3.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  //Circulo Central
                                  Container(
                                    alignment: Alignment.center,
                                    height: _height * 0.06,
                                    width: _width * 0.2,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.greenAccent,
                                            width: 3.0),
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft:
                                              Radius.circular(_width * 0.2),
                                          bottomRight:
                                              Radius.circular(_width * 0.2),
                                        )),
                                  ),
                                  Container(
                                      alignment: Alignment.center,
                                      height: _height * 0.2,
                                      width: _width * 0.5,
                                      color: Colors.transparent,
                                      child: Stack(children: [
                                        //Meia Lua
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                height: _height * 0.045,
                                                width: _width * 0.15,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            Colors.greenAccent,
                                                        width: 3.0),
                                                    color: Colors.transparent,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft: Radius.circular(
                                                          _width * 0.1),
                                                      topRight: Radius.circular(
                                                          _width * 0.1),
                                                    )))),

                                        //Grande Area
                                        Container(
                                            decoration: const BoxDecoration(
                                                //color: Colors.white,
                                                border: Border(
                                                    top: BorderSide(
                                                        color:
                                                            Colors.greenAccent,
                                                        width: 3.0),
                                                    left: BorderSide(
                                                        color:
                                                            Colors.greenAccent,
                                                        width: 3.0),
                                                    right: BorderSide(
                                                        color:
                                                            Colors.greenAccent,
                                                        width: 3.0))),
                                            margin: const EdgeInsets.only(
                                                top: 32.5,
                                                left: 20.0,
                                                right: 20.0)),
                                        //Penalty
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: _height * 0.009,
                                                width: _width * 0.015,
                                                decoration: BoxDecoration(
                                                  color: Colors.greenAccent,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                ))),

                                        //Pequena Area
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                height: _height * 0.05,
                                                width: _width * 0.2,
                                                decoration: const BoxDecoration(
                                                    border: Border(
                                                        top: BorderSide(
                                                            color: Colors
                                                                .greenAccent,
                                                            width: 3.0),
                                                        left: BorderSide(
                                                            color: Colors
                                                                .greenAccent,
                                                            width: 3.0),
                                                        right: BorderSide(
                                                            color: Colors
                                                                .greenAccent,
                                                            width: 3.0))))),
                                      ])),
                                ]))),
                  ]),
                  const BolaAtual(),
                  //bolasdif(context, ref),
                  Container(
                      height: 45,
                      width: 100,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              bola.mudar();
                            });
                          },
                          child: Text("+"))),
                ])))));
  }
}

bolasdif(BuildContext context, WidgetRef ref) {
  final bola = ref.watch(bolaProvider);
  if (bola.y_atual != bola.y_old || bola.x_atual != bola.x_old) {
    return const BolaOld();
  } else {
    return Container();
  }
}
