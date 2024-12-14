import 'dart:async';
import 'package:flame/components.dart';
import 'package:game_su/game/green.dart';

import '../player.dart';

class GreenWord extends World with HasGameRef<Green> {
  @override
  FutureOr<void> onLoad() {
    super.onLoad();
    add(Player());
  }
}
