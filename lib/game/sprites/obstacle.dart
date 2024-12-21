import 'dart:async';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:game_su/const.dart';
import 'package:game_su/game/sprites/player.dart';
import '../green.dart';

class Obstacle extends SpriteComponent with HasGameRef<Green>, CollisionCallbacks {
  Obstacle({
    required this.spritePath,
    required this.sizeObstacle,
  });

  final String spritePath;
  final Vector2 sizeObstacle;

  @override
  FutureOr<void> onLoad() async {
    sprite = await Sprite.load(spritePath);
    anchor = Anchor.center;
    size = sizeObstacle;
    // add(RectangleHitbox());
    add(CircleHitbox());
  }

  @override
  void onCollisionStart(Set<Vector2> intersectionPoints, PositionComponent other) {
    if (other is Player) {
      if (other.position.y > (position.y)) {
        other.removeFromParent();
      }
      super.onCollisionStart(intersectionPoints, other);
    }
  }
}

class ObstacleBangChuNhat extends Obstacle {
  ObstacleBangChuNhat()
      : super(spritePath: 'BangChuNhat.png', sizeObstacle: Vector2(bangChuNhatWidth, bangChuNhatHeight));
}

class ObstacleBangElip extends Obstacle {
  ObstacleBangElip() : super(spritePath: "BangElip.png", sizeObstacle: Vector2(bangElipWidth, bangElipHeight));
}

class ObstacleBangTamGiac extends Obstacle {
  ObstacleBangTamGiac()
      : super(spritePath: "BangTamGiac.png", sizeObstacle: Vector2(bangTamGiacWidth, bangTamGiacHeight));
}

class ObstacleBangHinhThoi extends Obstacle {
  ObstacleBangHinhThoi() : super(spritePath: "BangThoi.png", sizeObstacle: Vector2(bangThoiWidth, bangThoiHeight));
}

class ObstacleBangTron extends Obstacle {
  ObstacleBangTron() : super(spritePath: "BangTron.png", sizeObstacle: Vector2(bangTronWidth, bangTronHeight));
}

class ObstacleBangVuong extends Obstacle {
  ObstacleBangVuong() : super(spritePath: "BangVuong.png", sizeObstacle: Vector2(bangVuongWidth, bangVuongHeight));
}
