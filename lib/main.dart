import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
      home: HomePage(), // Appelle ici la page à afficher
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'f-2048',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.help_outline),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('À propos'),
                  content: const Text('Ce jeu 2048 a été développé par Rémi Dieu et Kyllian Levent'),
                  contentPadding: const EdgeInsets.all(20.0),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(); // Ferme la boîte de dialogue
                      },
                      child: const Text('Fermer'),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
        backgroundColor: Colors.orange,
      ),
      body: const Center(
        child: Text('Bienvenue dans 2048!'),
      ),
    );
  }
}
