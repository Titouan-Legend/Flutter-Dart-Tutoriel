import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'flag.dart';

void main() {
  runApp(Hymnes());
}

class Hymnes extends StatelessWidget {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache audioCache = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hymnes"),
        ),
        body: Column(
          children: [
            TextButton(
              onPressed: () {
                jouerPour("france");
              },
              child: Flag(
                country: "france",
              ),
            ),
            TextButton(
              onPressed: () {
                jouerPour("uk");
              },
              child: Flag(
                country: "uk",
              ),
            ),
            TextButton(
              onPressed: () {
                jouerDepuis("https://upload.wikimedia.org/wikipedia/commons/5/5e/%22The_Star-Spangled_Banner%22_-_Choral_with_band_accompaniment_-_United_States_Army_Field_Band.oga");
              },
              child: Flag(
                webUrl:
                    "https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/640px-Flag_of_the_United_States.svg.png",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                audioPlayer.stop();
              },
              child: Text("STOP"),
            )
          ],
        ),
      ),
    );
  }

  void jouerPour(String country) async {
    /// Joue depuis les fichiers locaux pour le pays donnés.
    await audioPlayer.stop();
    audioPlayer = await audioCache.play("sounds/$country.mp3");
  }

  void jouerDepuis(String url) async {
    await audioPlayer.stop();
    audioPlayer.play(url);
  }
}
































