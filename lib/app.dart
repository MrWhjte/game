import 'dart:ffi';

import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:game_su/const.dart';
import 'package:game_su/game/green.dart';

class GameApp extends StatefulWidget {
  const GameApp({super.key});

  @override
  State<GameApp> createState() => _GameAppState();
}

class _GameAppState extends State<GameApp> {
  late final Green game;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    game = Green();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.greenAccent
      ),
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text("Text"),
        // ),
        body: SafeArea(
          child: Center(
            child: FittedBox(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.height,
                child: GameWidget(game: game),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
