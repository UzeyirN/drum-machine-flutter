import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../widgets/sound_button.dart';

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
                    child: buildDrumBox(
                      soundName: 'sound1',
                      colorName: Colors.blueAccent,
                      playSound: () => playSound('sound1'),
                    ),
                  ),
                  Expanded(
                    child: buildDrumBox(
                      soundName: 'sound2',
                      colorName: Colors.redAccent,
                      playSound: () => playSound('sound2'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrumBox(
                      soundName: 'sound3',
                      colorName: Colors.green,
                      playSound: () => playSound('sound3'),
                    ),
                  ),
                  Expanded(
                    child: buildDrumBox(
                      soundName: 'sound4',
                      colorName: Colors.blueGrey,
                      playSound: () => playSound('sound4'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrumBox(
                      soundName: 'sound5',
                      colorName: Colors.brown,
                      playSound: () => playSound('sound5'),
                    ),
                  ),
                  Expanded(
                    child: buildDrumBox(
                      soundName: 'sound6',
                      colorName: Colors.purple,
                      playSound: () => playSound('sound6'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrumBox(
                      soundName: 'sound7',
                      colorName: Colors.yellow,
                      playSound: () => playSound('sound7'),
                    ),
                  ),
                  Expanded(
                    child: buildDrumBox(
                      soundName: 'sound8',
                      colorName: Colors.greenAccent,
                      playSound: () => playSound('sound8'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
