import 'dart:async';

import 'package:flame/camera.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_su/const.dart';
import 'package:game_su/game/green_word.dart';

class Green extends FlameGame<GreenWord> with HorizontalDragDetector, KeyboardEvents, HasCollisionDetection {
  Green()
      : super(
          world: GreenWord(),
          camera: CameraComponent.withFixedResolution(
            width: gameWidth,
            height: gameHeight,
          ),
        );

  @override
  FutureOr<void> onLoad() {
    // TODO: implement onLoad
    super.onLoad();
    debugMode=true;


  }
  @override
  Color backgroundColor() {
    return Colors.green;
  }

  @override
  void onHorizontalDragUpdate(DragUpdateInfo info) {
    // TODO: implement onHorizontalDragUpdate
    super.onHorizontalDragUpdate(info);
    world.player.moveX(info.delta.global.x);
  }

  @override
  KeyEventResult onKeyEvent(KeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    const double moveSpeed = 50.0;
    if (event is KeyDownEvent) {
      if (keysPressed.contains(LogicalKeyboardKey.arrowRight)) {
        world.player.moveX(moveSpeed);
        return KeyEventResult.handled;
      } else if (keysPressed.contains(LogicalKeyboardKey.arrowLeft)) {
        world.player.moveX(-moveSpeed);
        return KeyEventResult.handled;
      }
    }
    return KeyEventResult.ignored;
  }
}
