import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:game_su/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen(); // Bật chế độ toàn màn hình
  Flame.device.setPortrait(); // Cố định màn hình theo hướng dọc
  runApp(const GameApp());

}
