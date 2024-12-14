import 'dart:async';

import 'package:flame/camera.dart';
import 'package:flame/game.dart';

import 'package:flutter/material.dart';
import 'package:game_su/const.dart';
import 'package:game_su/game/green_word.dart';
import 'package:game_su/player.dart';

class Green extends FlameGame {
  Green()
      : super(
          world: GreenWord(),
          camera: CameraComponent.withFixedResolution(
            width: gameWidth,
            height: gameHeight,
          ),
        );
  @override
  Color backgroundColor() {
    return Colors.blue;
  }
}
