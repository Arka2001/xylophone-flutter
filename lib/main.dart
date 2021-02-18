import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playsound(int num){
    final player = AudioCache();
    player.play('note$num.wav');
  }


  Expanded buildKey(int num){

    List colors = [
      Colors.red,
      Colors.deepOrange,
      Colors.yellow,
      Colors.green,
      Colors.blue,
      Colors.indigo,
      Colors.deepPurple
    ];

    return Expanded(
      child: FlatButton(
        color: colors[num-1],
        onPressed: (){
          playsound(num);
        },
      ),
    );
  }

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
              buildKey(1),
              buildKey(2),
              buildKey(3),
              buildKey(4),
              buildKey(5),
              buildKey(6),
              buildKey(7),
            ],
          ),
        ),
      ),
    );
  }
}
