import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  String GetIpsum({int p = 1, int w = 10}) {
    return lorem(paragraphs: p, words: w);
  }

  List<String> GetRowContents(int n, int p, int w) {
    List<String> rowContents = [];
    for (int i = 0; i < n; i++) {
      rowContents.add(GetIpsum(p: p, w: w));
    }
    return rowContents;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(title: 'App Akademie 01', rowContents: GetRowContents(4, 1, 8)),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, required this.rowContents});

  final String title;
  final List<String> rowContents;

  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  EdgeInsetsGeometry elementPadding = EdgeInsets.all(16);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(
          child: Text(widget.title)
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: elementPadding,
              color: Colors.blueAccent,
              child: Center(
                child: Text("Column Element 1 (element 2 is a row)"),
              )
            ),
            Container(
              width: double.infinity,
              padding: elementPadding,
              color: Colors.purple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (int i = 0; i < widget.rowContents.length; i++) (
                    Flexible(
                      flex: 1,
                      child: SizedBox(
                        child: Text("Row $i\n\n${widget.rowContents[i]}"),
                      )
                    )
                  ),
                ],
              )
            )
          ],
        ),
      ),
      /*
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      */ // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
