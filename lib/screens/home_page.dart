import 'package:flutter/material.dart';

import 'drum_page.dart';

class DrumMachine extends StatelessWidget {
  const DrumMachine({super.key});

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
