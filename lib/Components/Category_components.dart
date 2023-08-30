// ignore_for_file: file_names, must_be_immutable, camel_case_types, empty_catches

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:tunesapp/Components/TuneData.dart';

class category extends StatelessWidget {
  category({
    super.key,
    this.data,
  });
  tuneData? data;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: () {
          try {
            final player = AudioPlayer();
            player.play(
              AssetSource(data!.path!),
            );
          } catch (ex) {}
        },
        child: Container(
          padding: const EdgeInsets.only(left: 24),
          alignment: Alignment.centerLeft,
          color: data!.color,
        ),
      ),
    );
  }
}
