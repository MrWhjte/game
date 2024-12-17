import 'dart:async';
import 'package:flame/components.dart';
import 'package:game_su/game/green.dart';
import 'package:game_su/sprites/hand.dart';

import '../sprites/player.dart';

class GreenWord extends World with HasGameRef<Green> {
  late final Player player;
  @override
  FutureOr<void> onLoad() {
    super.onLoad();
    player=Player();
    add(player);
    add(Hand());
  }
}
