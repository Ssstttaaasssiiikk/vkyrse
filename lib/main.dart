import 'package:flutter/material.dart';
import 'todolistback.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  String _counter = '';
  int check = 0;
  List<Task> list = [];

  void _incrementCounter() async {
    if (check == 3) {
      List<Task> tasks = await Task.readoutfile();
      for (var el in tasks) {
        setState(() {
          _counter += el.toString();
        });
      }
      check++;
    } else {
      Task task = Task("hhh" + check.toString(), DateTime.now());
      list.add(task);
      check++;
      if (check == 2) {
        Task.writeinfile(list);
      }
    }
  }

  /* void show() async {
    Directory root = await getTemporaryDirectory();
    String directoryPath = root.path + '/task.json';
    File file = File(directoryPath);
    final data = await file.readAsString();
    final decoded = json.decode(data);
    final Task task = Task.fromJson(decoded);
    setState(() {
      _counter += task.toString();
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
