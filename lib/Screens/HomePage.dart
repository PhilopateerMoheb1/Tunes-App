// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:core';

import 'package:flutter/material.dart';
import 'package:tunesapp/Components/Category_components.dart';
import 'package:tunesapp/Components/TuneData.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<tuneData> TuneData = [
    const tuneData(
      color: Color(0xFFff3f38),
      path: "note1.wav",
    ),
    const tuneData(
      color: Color(0xFFfc962b),
      path: "note2.wav",
    ),
    const tuneData(
      color: Color(0xFFfdea57),
      path: "note3.wav",
    ),
    const tuneData(
      color: Color(0xFF33af57),
      path: "note4.wav",
    ),
    const tuneData(
      color: Color(0xFF009587),
      path: "note5.wav",
    ),
    const tuneData(
      color: Color(0xFF0096ec),
      path: "note6.wav",
    ),
    const tuneData(
      color: Color(0xFFa326ac),
      path: "note7.wav",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Center(
          child: Text("Flutter Tune"),
        ),
        backgroundColor: const Color(0xFF243038),
      ),
      body: Column(
        children: TuneData.map((e) => category(
              data: e,
            )).toList(),
      ),
    );
  }
}
