import 'package:flame/components.dart';

import '../const.dart';

enum ObstacleType {
  chunhat,
  elip,
  tamgiac,
  thoi,
  tron,
  vuong,
}

class ObstacleData {
  final Vector2 position;
  final ObstacleType type;

  ObstacleData({required this.position, required this.type});
}

class LevelData {
  final obstacleSpacing = obstacleSize + (playerHeight * 2);
  final leftSide = -(gameWidth / 2) + (obstacleSize / 2);
  final rightSide = (gameWidth / 2) - (obstacleSize / 2);

  List<ObstacleData> level1() {
    List<ObstacleData> level = [];
    level.addAll(obstacleRow(
      row: 0,
      item1: ObstacleType.chunhat,
      item2: ObstacleType.chunhat,
      item4: ObstacleType.chunhat,
      item5: ObstacleType.chunhat,
    ));

    level.addAll(obstacleRow(
      row: 1,
      item2: ObstacleType.tron,
      item5: ObstacleType.tron,
    ));

    level.addAll(obstacleRow(
      row: 2,
      item3: ObstacleType.elip,
      item4: ObstacleType.elip,
    ));

    level.addAll(obstacleRow(
      row: 3,
      item1: ObstacleType.tamgiac,
      item4: ObstacleType.thoi,

    ));
    level.addAll(obstacleRow(
      row: 4,
      item1: ObstacleType.thoi,
      item5: ObstacleType.vuong,
    ));
    level.addAll(obstacleRow(
      row: 5,
      item4: ObstacleType.thoi,
      item3: ObstacleType.vuong,
    ));

    level.addAll(obstacleRow(
      row: 6,
      item1: ObstacleType.tron,
      item3: ObstacleType.tron,
      item4: ObstacleType.tamgiac,
    ));

    level.addAll(obstacleRow(
      row: 7,
      item2: ObstacleType.thoi,
    ));

    level.addAll(obstacleRow(
      row: 8,
      item2: ObstacleType.elip,
      item3: ObstacleType.tron,
      item4: ObstacleType.vuong,
    ));

    level.addAll(obstacleRow(
      row: 9,
      item1: ObstacleType.tamgiac,
      item3: ObstacleType.tamgiac,
      item5: ObstacleType.tamgiac,
    ));

    level.addAll(obstacleRow(
      row: 10,
      item1: ObstacleType.tron,
      item4: ObstacleType.vuong,
      item5: ObstacleType.vuong,
    ));

    level.addAll(obstacleRow(
      row: 11,
      item1: ObstacleType.tamgiac,
      item2: ObstacleType.thoi,
      item3: ObstacleType.chunhat,
    ));
    level.addAll(obstacleRow(
      row: 12,
      item4: ObstacleType.thoi,
      item3: ObstacleType.vuong,
    ));

    level.addAll(obstacleRow(
      row: 13,
      item1: ObstacleType.tron,
      item3: ObstacleType.tron,
      item4: ObstacleType.tamgiac,
    ));

    level.addAll(obstacleRow(
      row: 14,
      item1: ObstacleType.tamgiac,
      item3: ObstacleType.tamgiac,
      item5: ObstacleType.tamgiac,
    ));

    level.addAll(obstacleRow(
      row: 15,
      item1: ObstacleType.tron,
      item4: ObstacleType.vuong,
      item5: ObstacleType.vuong,
    ));
    level.addAll(obstacleRow(
      row: 16,
      item4: ObstacleType.thoi,
      item3: ObstacleType.vuong,
    ));

    level.addAll(obstacleRow(
      row: 17,
      item1: ObstacleType.tron,
      item3: ObstacleType.tron,
      item4: ObstacleType.tamgiac,
    ));

    level.addAll(obstacleRow(
      row: 18,
      item1: ObstacleType.tamgiac,
      item3: ObstacleType.tamgiac,
      item5: ObstacleType.tamgiac,
    ));

    level.addAll(obstacleRow(
      row: 19,
      item1: ObstacleType.tron,
      item4: ObstacleType.vuong,
      item5: ObstacleType.vuong,
    ));
    level.addAll(obstacleRow(
      row: 20,
      item1: ObstacleType.tron,
      item4: ObstacleType.vuong,
      item5: ObstacleType.vuong,
    ));
    return level;
  }

  // reusable row
  List<ObstacleData> obstacleRow({
    required int row,
    ObstacleType? item1,
    ObstacleType? item2,
    ObstacleType? item3,
    ObstacleType? item4,
    ObstacleType? item5,
  })
  {
    List<ObstacleData> content = [];
    final yPosition = obstacleSpacing * row;

    if (row < 0 || row > 21) {
      throw Exception("Row is out of range must be between 0..14");
    }

    if (item1 != null) {
      content.add(
        ObstacleData(
          position: Vector2(leftSide, yPosition),
          type: item1,
        ),
      );
    }
    if (item2 != null) {
      content.add(
        ObstacleData(
          position: Vector2(leftSide + (gameWidth / 5), yPosition),
          type: item2,
        ),
      );
    }
    if (item3 != null) {
      content.add(
        ObstacleData(
          position: Vector2(0, yPosition),
          type: item3,
        ),
      );
    }
    if (item4 != null) {
      content.add(
        ObstacleData(
          position: Vector2(rightSide - (gameWidth / 5), yPosition),
          type: item4,
        ),
      );
    }
    if (item5 != null) {
      content.add(
        ObstacleData(
          position: Vector2(rightSide, yPosition),
          type: item5,
        ),
      );
    }
    return content;
  }
}