//@dart=2.9

import 'AppState.dart';
import 'actions.dart';

AppState reducer(AppState prevState, dynamic action) {
  AppState newState = AppState.fromAppState(prevState);

  if (action is FontSize) {
    newState.sliderFontSize = action.fontSize;
  } else if (action is Bold) {
    newState.bold = action.bold;
  } else if (action is Italic) {
    newState.italic = action.italic;
  }
  return newState;
}
