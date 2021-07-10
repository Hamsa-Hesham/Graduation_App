import 'package:flutter/material.dart';

class AppState {
  double? sliderFontSize;
  bool bold = false;
  bool italic = false;
  AppState({
    @required this.sliderFontSize,
    required this.bold,
    required this.italic,
  });

  AppState.fromAppState(AppState another) {
    sliderFontSize = another.sliderFontSize;
    bold = another.bold;
    italic = another.italic;
  }

  double get viewFontSize => sliderFontSize! * 30;
}
