import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: DrumPage(),
      ),
    );
  }
}

class DrumPage extends StatefulWidget {
  const DrumPage({super.key});

  @override
  State<DrumPage> createState() => _DrumPageState();
}

class _DrumPageState extends State<DrumPage> {
  final player = AudioPlayer();

  void playSound(String sound) async {
    await player.play(
      AssetSource('audios/$sound.wav'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrumBox('sound1', Colors.blueAccent),
                  ),
                  Expanded(
                    child: buildDrumBox('sound2', Colors.redAccent),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: buildDrumBox('sound3', Colors.green)),
                  Expanded(child: buildDrumBox('sound4', Colors.blueGrey)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: buildDrumBox('sound5', Colors.brown)),
                  Expanded(child: buildDrumBox('sound6', Colors.purple)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrumBox('sound7', Colors.yellow),
                  ),
                  Expanded(
                    child: buildDrumBox('sound8', Colors.greenAccent),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextButton buildDrumBox(String soundName, Color colorName) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(8),
      ),
      onPressed: () {
        playSound(soundName);
      },
      child: Container(
        color: colorName,
      ),
    );
  }
}
