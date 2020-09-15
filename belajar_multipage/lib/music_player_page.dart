import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MusicPlayerPage extends StatefulWidget {
  @override
  _MusicPlayerPageState createState() => _MusicPlayerPageState();
}

class _MusicPlayerPageState extends State<MusicPlayerPage> {
  AudioPlayer audioPlayer;

  _MusicPlayerPageState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
  }

  void play(String url) async {
    await audioPlayer.play(url);
  }

  void pause() async {
    await audioPlayer.pause();
  }

  void stop() async {
    await audioPlayer.stop();
  }

  void resume() async {
    await audioPlayer.seek(
      Duration(seconds: 10),
    );
    await audioPlayer.resume();
  }

  String durasi = '0.0';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Playing Music'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                child: Text('Play'),
                onPressed: () {
                  play(
                      'https://file-examples-com.github.io/uploads/2017/11/file_example_MP3_700KB.mp3');
                },
              ),
              RaisedButton(
                child: Text('Pause'),
                onPressed: () {
                  pause();
                },
              ),
              RaisedButton(
                child: Text('Stop'),
                onPressed: () {
                  stop();
                },
              ),
              RaisedButton(
                child: Text('Resume'),
                onPressed: () {
                  resume();
                },
              ),
              Text(
                durasi,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
