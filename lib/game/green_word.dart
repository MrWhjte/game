import 'dart:async';
import 'package:flame/components.dart';
import 'package:game_su/const.dart';
import 'package:game_su/game/green.dart';
import 'package:game_su/game/sprites/obstacle.dart';

import 'level_data.dart';
import 'sprites/player.dart';

class GreenWord extends World with HasGameRef<Green> {
  late final Player player;
  void loadLevel(List<ObstacleData> levelData) {
    // remove any existing Obstacles
    removeAll(children.whereType<Obstacle>().toList());
    // load new obstacles from level data
    for (var data in levelData) {
      Obstacle obstacle;
      if (data.type == ObstacleType.chunhat) {
        obstacle = ObstacleBangChuNhat()..position = data.position;
      } else if (data.type == ObstacleType.elip) {
        obstacle = ObstacleBangElip()..position = data.position;
      } else if (data.type == ObstacleType.tamgiac) {
        obstacle = ObstacleBangTamGiac()..position = data.position;
        } else if (data.type == ObstacleType.thoi) {
          obstacle = ObstacleBangHinhThoi()..position = data.position;
        } else if (data.type == ObstacleType.tron) {
          obstacle = ObstacleBangTron()..position = data.position;
      } else if (data.type == ObstacleType.vuong) {
          obstacle = ObstacleBangVuong()..position = data.position;
      } else {
        continue;
      }
      add(obstacle);
    }
  }

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();


    player = Player();
    add(player);
    loadLevel(LevelData().level1());
  }

  @override
  void update(double dt) {
    super.update(dt);
    children.whereType<Obstacle>().forEach((obstacle) {
      obstacle.position.y -= (dt * 300);
      if (obstacle.position.y < -(gameRef.size.y / 1.8)) {
        obstacle.position.y =extendedHeight;
      }
    });
  }
}
