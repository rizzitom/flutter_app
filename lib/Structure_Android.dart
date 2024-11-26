import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nice Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Nice Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
  String _affichage = '0 : Accueil'; 

    void itemClique(int index) {
    setState(() {
      _selectedIndex = index;
      switch (_selectedIndex) {
        case 0:
          _affichage = '$_selectedIndex : Accueil';
          break;
        case 1:
          _affichage = '$_selectedIndex : Favoris';
          break;
        case 2:
          _affichage = '$_selectedIndex : Paramètres';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: const Color.fromARGB(255, 47, 177, 216),
        ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(_affichage),
                  ],
                ),
              ),
      
        floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Create',
        child: const Icon(Icons.add),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Accueil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favoris',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Paramètres',
        ),
      ],
      onTap: itemClique, 
      currentIndex: _selectedIndex, 
    ),
  );
}
}

    // Ajout https://api.flutter.dev/flutter/material/BottomAppBar-class.html?_gl=1*kz5um0*_ga*MjAwMDgwOTUuMTczMjEwMDE3Mw..*_ga_04YGWK0175*MTczMjUyMzE4My4yLjEuMTczMjUyMzMxNy4wLjAuMA..

