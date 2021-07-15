import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() => runApp(MaterialApp(
  home: PianoApp(),
));

class PianoApp extends StatelessWidget {
  void playSound(String noteSound){
    final player = AudioPlayer();
    player.setAsset("./assets/note_sounds/$noteSound.mp3");
    player.play();
  }

  Flexible pianoKey({required String noteSound, required String noteImage}){
    return Flexible(
      child: TextButton(
        child: Image.asset('assets/note_image/$noteImage.png'),
        onPressed: () {
          playSound(noteSound);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              pianoKey(noteSound: 'C3', noteImage: 'do'),
              pianoKey(noteSound: 'D3', noteImage: 're'),
              pianoKey(noteSound: 'E3', noteImage: 'mi'),
              pianoKey(noteSound: 'F3', noteImage: 'fa'),
              pianoKey(noteSound: 'G3', noteImage: 'sol'),
              pianoKey(noteSound: 'A3', noteImage: 'la'),
              pianoKey(noteSound: 'B3', noteImage: 'si'),
              pianoKey(noteSound: 'C4', noteImage: 'do'),
            ],
          ),
      ),
    );
  }
}
