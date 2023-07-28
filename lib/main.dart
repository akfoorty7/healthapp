import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  runApp(const HealthApp());
}

class HealthApp extends StatelessWidget {
  const HealthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),

      debugShowCheckedModeBanner: false,
      home: LoginPage() ,
    );
  }
}
