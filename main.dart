import 'package:flutter/material.dart';
import 'bmi.dart';
import 'Page1.dart';

void main() => runApp(
  MaterialApp(
    theme: ThemeData.light(),
    home:  InputBMI(),
    routes: <String, WidgetBuilder>{
      '/Page1' : (BuildContext context) => Account(),
    },
  ),
);
