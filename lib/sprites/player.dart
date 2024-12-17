import 'dart:async';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:game_su/const.dart';
import 'package:game_su/game/green.dart';

class Player extends SpriteComponent with HasGameRef<Green> {
  @override
  FutureOr<void> onLoad() async {
    sprite = await Sprite.load("sticker_tb.png");
    size = Vector2.all(150);
    position = Vector2(0, -(gameHeight / 2) + (size.y / 2));
    anchor = Anchor.center;
    add(RectangleHitbox());
  }

  @override
  void update(double dt) {
    // TODO: implement update
    super.update(dt);

    double newY = position.y + (dt * 400);

    if (newY > (gameRef.size.y / 2) - (size.y / 2)) {
      newY = (gameRef.size.y / 2) - (size.y / 2);
    }
    position.y = newY;
  }

  void moveX(double deltax) {
    double newX = position.x+ deltax;
    double maxX= (gameRef.size.x / 2) - (size.x / 2);
    double minX=- (gameRef.size.x / 2) +(size.x / 2);
    newX=newX.clamp(minX, maxX);
    position.x=newX;
  }

  // void moveY(double deltax) {
  //   double newY = position.y+ deltax;
  //   if (newY > (gameRef.size.y / 2) - (size.y / 2)) {
  //     newY = (gameRef.size.y / 2) - (size.y / 2);
  //   }
  //   position.y = newY;
  // }
}
