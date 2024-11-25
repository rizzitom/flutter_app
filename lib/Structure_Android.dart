import 'package:flutter/material.dart';

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
      theme: ThemeData(primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  Icon _coeur = Icon(Icons.favorite_border, color: Colors.white,);
  bool _likeBool = false;

  void _likeThis(){
    setState(() {
      if (_likeBool){
        _coeur = Icon(Icons.favorite_border, color: Colors.white,);
        _likeBool = false;
      }
      else {
        _coeur = Icon(Icons.favorite, color: Colors.white,);
        _likeBool = true;
      }
    });
    
  }
  
  int _counter = 0;
    void _addContent() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.red,
        ),
              body: Center(
        child: Text(
          'Page: $_counter',
          style: const TextStyle(fontSize: 24),
        ),
      ),
      
        floatingActionButton: FloatingActionButton(
        onPressed: _addContent,
        tooltip: 'Create',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              tooltip: 'Open navigation menu',
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              tooltip: 'Like',
              icon: _coeur,
              onPressed: _likeThis,
            ),
          ],
        ),
      ),
    );
    // Ajout https://api.flutter.dev/flutter/material/BottomAppBar-class.html?_gl=1*kz5um0*_ga*MjAwMDgwOTUuMTczMjEwMDE3Mw..*_ga_04YGWK0175*MTczMjUyMzE4My4yLjEuMTczMjUyMzMxNy4wLjAuMA..
  }
}