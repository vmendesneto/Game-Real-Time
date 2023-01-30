import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:shared_preferences/shared_preferences.dart';
import '../Firebase/firebase_cloud.dart';

class BolaControllerState {
  double x_atual;
  double y_atual;
  Map<String, dynamic> b;

  BolaControllerState({
    this.x_atual = 0.0,
    this.y_atual = 0.0,
    this.b = const {},
  });
}

class BolaController extends StateNotifier<BolaControllerState> {
  BolaController([BolaControllerState? state]) : super(BolaControllerState());

  Future<Map<String, dynamic>> buscar() async {
    late FirebaseFirestore db;
    db = DBFirestore.get();
    final result = await Future.value(db.collection("bola").doc("atual").get());
    Map<String, dynamic> t = result.data()!;
    double x = t['x'].toDouble();
    double y = t["y"].toDouble();
    Map<String, dynamic> b = {'xi': x, 'yi': y};
    state = BolaControllerState(
      x_atual: x,
      y_atual: y,
      b: b,
    );
    return b;
  }
}
