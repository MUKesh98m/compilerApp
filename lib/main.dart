import 'package:flutter/material.dart';

void main() {
  runApp(SymbolsApp());
}

class SymbolsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Symbols List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SymbolsScreen(),
    );
  }
}

class SymbolsScreen extends StatefulWidget {
  @override
  _SymbolsScreenState createState() => _SymbolsScreenState();
}

class _SymbolsScreenState extends State<SymbolsScreen> {
  String selectedSymbol = '';

  final List<String> symbols = [
    "/",
    "%",
    "++",
    "--",
    "==",
    "!=",
    ">",
    "<",
    ">=",
    "<=",
    "&&",
    "||",
    "!",
    "&",
    "|",
    "^",
    "~",
    "<<",
    ">>",
    ">>>",
    "+=",
    "-=",
    "=",
    "/=",
    "%=",
    "&=",
    "|=",
    "^=",
    "<<=",
    ">>=",
    ";",
    "()",
    "{}",
    "[]",
    ",",
    ":",
    ".",
    "?",
    "#",
    "\$",
    "&",
    "_"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Symbols List'),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              selectedSymbol,
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: symbols.length,
                itemBuilder: (context, index) {
                  final symbol = symbols[index];
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedSymbol = symbol;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 50,
                        height: 30,
                        color: Colors.blue,
                        child: Center(
                          child: Text(
                            symbol,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
