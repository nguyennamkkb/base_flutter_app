import 'package:flutter/material.dart';
import 'package:flutter_base_bloc_app/blocs/character/data/character_param.dart';
import 'package:flutter_base_bloc_app/blocs/character/data/character_service.dart';
import 'package:flutter_base_bloc_app/ui/character_screen/character_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CharacterScreen(),
    );
  }
}
