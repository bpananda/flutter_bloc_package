import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'dart:async';

enum ColorEvent { to_green, to_light_blue }

class ColorBloc extends Bloc<ColorEvent, Color> {
  Color _color = Colors.greenAccent;

  @override
  Color get initialState => Colors.greenAccent;

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    _color =
        (event == ColorEvent.to_green) ? Colors.greenAccent : Colors.lightBlue;
    yield _color;
  }
}
