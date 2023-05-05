import 'package:censo/app/app.dart';
import 'package:flutter/material.dart';
import './app/core/injection/injector.dart' as injector;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injector.init();
  runApp(const App());
}
