import 'package:censo/app/core/routes/app_routes.dart';
import 'package:censo/app/core/routes/named_routes.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: AppRoutes.routes,
      initialRoute: NamedRoutes.initial,
    );
  }
}
