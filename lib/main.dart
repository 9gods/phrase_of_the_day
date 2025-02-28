import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Phrases of the day",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        appBarTheme: AppBarTheme(color: Colors.green.shade800),
      ),
      home: MainPage(title: "Frases do dia"),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title});

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var phrases = [
    'Hello, World!',
    'Bonjour, Monde!',
    'Hola, Mundo!',
    'Ciao, Mondo!',
    'Guten Tag, Welt!',
    'Salut, le Monde!',
    'Привет, Мир!',
    '안��하세요, 세상!',
    'こんにちは, 世界!',
    'Привет, Мир!',
    'Здравствуй, Мир!',
    'Hej, Välkomen!',
    'Bonjour, le Monde!',
    'Hola, Mundo!',
    'Ciao, Mondo!',
    'Guten Tag, Welt!',
    'Salut, le Monde!',
    'Привет, Мир!',
    '안��하세요, 세상!',
    'こんにちは, 世界!',
    'Привет, Мир!',
  ];

  late String selectedPhrase = phrases[Random().nextInt(phrases.length)];

  void generatePhrase() {
    setState(() {
      var randomIndex = Random().nextInt(phrases.length);
      selectedPhrase = phrases[randomIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
        titleTextStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: Colors.white,
          letterSpacing: 2,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage('logo.png')),
            Card(
              color: Colors.white70,
              child: SizedBox(
                width: 300,
                height: 100,
                child: Center(
                  child: Text(
                    selectedPhrase,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            MaterialButton(
              onPressed: generatePhrase,
              color: Colors.green.shade800,
              textTheme: ButtonTextTheme.values[2],

              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Text('Gerar frase', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
