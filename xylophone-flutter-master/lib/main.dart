import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({Color color, int noteNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(noteNumber);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buildKey(color: Colors.red, noteNumber: 1),
                buildKey(color: Colors.orange, noteNumber: 2),
                buildKey(color: Colors.yellow, noteNumber: 3),
                buildKey(color: Colors.green, noteNumber: 4),
                buildKey(color: Colors.teal, noteNumber: 5),
                buildKey(color: Colors.blue, noteNumber: 6),
                buildKey(color: Colors.purple, noteNumber: 7),
          ],
        )),
      ),
    );
  }
}
