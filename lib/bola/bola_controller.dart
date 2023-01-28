
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:math';

class BolaControllerState {
  double x_atual;
  double y_atual;
  double x_old;
  double y_old;

  BolaControllerState({
    this.x_atual = 0.0,
    this.y_atual = 0.0,
    this.x_old = -0.5,
    this.y_old = -0.5,
  });
}

class BolaController extends StateNotifier<BolaControllerState> {
  BolaController([BolaControllerState? state]) : super(BolaControllerState());

  mudar(){
    for(var i = 0; i < 10; i++){
      var x = doubleInRange(Random(), -1.0, 1.0);
      var y = doubleInRange(Random(), -1.0, 1.0);
      state= BolaControllerState(x_atual: x, y_atual: y );
    }
  }
    double doubleInRange(Random source, num start, num end) =>
        source.nextDouble() * (end - start) + start;



}