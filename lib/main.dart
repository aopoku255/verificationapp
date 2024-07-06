import 'package:flutter/material.dart';
import 'package:selfiemobileapp/src/routes/routes.dart';
import 'package:selfiemobileapp/src/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: routes,
    );
  }
}
