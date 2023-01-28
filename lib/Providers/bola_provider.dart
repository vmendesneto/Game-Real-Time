import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../bola/bola_controller.dart';

final bolaProvider = StateNotifierProvider<BolaController, BolaControllerState>((ref) => BolaController());