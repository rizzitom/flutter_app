import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deuxième Projet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const PageAccueil(), 
    );
  }
}

class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accueil'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Bienvenue sur votre app incrementeur',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EcranDetail()),
                );
              },
              child: const Text('Aller à l écran détaillé'),
            ),
          ],
        ),
      ),
    );
  }
}

class EcranDetail extends StatefulWidget {
  const EcranDetail({super.key});

  @override
  _EcranDetailState createState() => _EcranDetailState();
}

class _EcranDetailState extends State<EcranDetail> {
  int compteur = 0; 

  void incrementer() {
    setState(() {
      compteur++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Écran Détaillé'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context); 
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Gestion état',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Valeur du compteur : $compteur',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: incrementer,
              child: const Text('Incrémenter'),
            ),
          ],
        ),
      ),
    );
  }
}
