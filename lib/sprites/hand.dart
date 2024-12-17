import 'dart:async';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:game_su/const.dart';
import 'package:game_su/sprites/player.dart';

import '../game/green.dart';

class Hand extends SpriteComponent with HasGameRef<Green>, CollisionCallbacks {
  @override
  FutureOr<void> onLoad() async {
    // TODO: implement onLoad
    sprite = await Sprite.load("handBig.png");
    size = Vector2.all(250);
    position = Vector2(0, (gameRef.size.y / 2) - (size.y / 2));
    anchor = Anchor.center;
    add(RectangleHitbox());
  }
  @override
  void onCollisionStart(Set<Vector2> intersectionPoints, PositionComponent other) {
    if(other is Player && other.position.y >position.y){
      other.removeFromParent();
    }
    super.onCollisionStart(intersectionPoints, other);
  }
}
