import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Future audioplayersURL(int trackNumber) async {
    final player = AudioPlayer();
    await player.play(UrlSource("assets/piano$trackNumber.wav"));
  }

  Expanded getLocalAudio({required Color color, required int getTrack, required Text label}) {
    return Expanded(
      child: Container(
        color: color,
        child: FlatButton(
          onPressed: () {
            audioplayersURL(getTrack);
          },
          child: label,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Piano Music App")),
        ),
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                color: Colors.black,
                child: Center(
                    child: Text(
                  "Let's Create Music Using Piano",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                )),
              ),
            ),
            getLocalAudio(color: Colors.red, getTrack: 1, label: Text("First Key", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
            getLocalAudio(color: Colors.blueGrey, getTrack: 2, label: Text("Second Key", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
            getLocalAudio(color: Colors.blue, getTrack: 3, label: Text("Third Key", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
            getLocalAudio(color: Colors.purple, getTrack: 4, label: Text("Four Key", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
            getLocalAudio(color: Colors.green, getTrack: 5, label: Text("Five Key", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
            getLocalAudio(color: Colors.orange, getTrack: 6, label: Text("Six Key", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
            getLocalAudio(color: Colors.teal, getTrack: 7, label: Text("Seven Key", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
          ],
        )),
      ),
    );
  }
}
