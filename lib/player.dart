import 'dart:async';

import 'package:flame/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:game_su/const.dart';

class Player extends SpriteComponent {
  @override
  FutureOr<void> onLoad() async {
    sprite = await Sprite.load("sticker_tb.png");
    size = Vector2.all(200);
    position = Vector2(0, -(gameHeight/2)+(size.y/2));
   anchor = Anchor.center;
  }
}
