import 'package:flutter/material.dart';

class CounterStateful extends StatefulWidget {
  Color buttonColor;
  CounterStateful({Key? key, required this.buttonColor});

  @override
  State<CounterStateful> createState() {
    State<CounterStateful> stateClassAssociationWithThisWidget =
        _CounterStatefulState();
    return stateClassAssociationWithThisWidget;
  }
}

class _CounterStatefulState extends State<CounterStateful> {
  int counter = 0;
  void increment() {
    setState(() {});

    print(counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: widget.buttonColor,
        child: Icon(Icons.add),
        onPressed: () {
          increment();
        },
      ),
      body: Center(
        child: Text(
          '$counter',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
