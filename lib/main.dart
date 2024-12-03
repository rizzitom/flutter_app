import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Pavlova aux fraises'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [

            const Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pavlova aux fraises',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'La Pavlova est un dessert à base de meringue qui doit son nom à la ballerine russe Anna Pavlova. '
                    'La Pavlova se caractérise par une croûte croustillante et un intérieur moelleux et léger, garni '
                    'de fruits et de crème fouettée.',
                  ),
                  SizedBox(height: 16.0),
                  Text('★★★★★  170 Notes', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 16.0),
                  Text('Préparation : 25 min'),
                  Text('Cuisson : 1 hr'),
                  Text('Nb. Pers : 4-6'),
                ],
              ),
            ),
            const SizedBox(width: 16.0),

            Expanded(
              flex: 1,
              child: Center(
                child: Image.network(
                  'https://www.lesdelices31.fr/wp-content/uploads/2022/05/20220327_134931.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
