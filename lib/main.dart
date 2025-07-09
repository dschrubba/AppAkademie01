import 'package:akademie01/widgets/icon_grid.dart';
import 'package:akademie01/widgets/square_row.dart';
import 'package:akademie01/widgets/welcome_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String title = "4.2.4 Widgetübersicht BONUS";
  
  String getIpsum({int p = 1, int w = 10}) {
    return lorem(paragraphs: p, words: w);
  }

  List<String> getRowContents(int n, int p, int w) {
    List<String> rowContents = [];
    for (int i = 0; i < n; i++) {
      rowContents.add(getIpsum(p: p, w: w));
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
      home: MyHomePage(title: title, rowContents: getRowContents(4, 1, 8)),
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
  
  EdgeInsetsGeometry elementPadding = EdgeInsets.all(8);
  BorderRadius borderRadius = BorderRadius.circular(8);

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
            WelcomeText(padding: elementPadding),
            WelcomeText(padding: elementPadding),
            SquareRow(borderRadius: borderRadius, padding: elementPadding),
            SquareRow(borderRadius: borderRadius, padding: elementPadding),
            IconGrid(borderRadius: borderRadius, padding: elementPadding)
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
