import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void playAudio(int audioNumber) {
    final player = AudioCache();
    player.play('note$audioNumber.wav');
  }

  Expanded getWidget({required Color color, required int soundNumber}) =>
      Expanded(
        child: RaisedButton(
          onPressed: () {
            playAudio(soundNumber);
          },
          color: color,
        ),
      );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            getWidget(color: Colors.purpleAccent, soundNumber: 1),
            getWidget(color: Colors.red, soundNumber: 2),
            getWidget(color: Colors.greenAccent, soundNumber: 3),
            getWidget(color: Colors.black, soundNumber: 4),
            getWidget(color: Colors.orangeAccent, soundNumber: 5),
            getWidget(color: Colors.white, soundNumber: 6),
            getWidget(color: Colors.teal, soundNumber: 7),
          ],
        )),
      ),
    );
  }
}
