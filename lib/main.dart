import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(SlotMachine());
}

class SlotMachine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '"slot machine"',
      home: Scaffold(
        appBar: AppBar(
          title: Text("slot machine"),
          backgroundColor: Colors.pinkAccent[400],
        ),
        backgroundColor: Colors.greenAccent,
        body: Slot(),
      ),
    );
  }
}

class Slot extends StatefulWidget {
  @override
  _SlotState createState() => _SlotState();
}

class _SlotState extends State<Slot> {
  var slotNumber1 = Random().nextInt(11) + 1;
  var slotNumber2 = Random().nextInt(11) + 1;
  var slotNumber3 = Random().nextInt(11) + 1;

  void setSlotNumber() {
    setState(() {
      slotNumber1 = Random().nextInt(11) + 1;
      slotNumber2 = Random().nextInt(11) + 1;
      slotNumber3 = Random().nextInt(11) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
                  onPressed: setSlotNumber,
                  child: Image.asset("images/$slotNumber1.png"))),
          Expanded(
              child: FlatButton(
                  onPressed: setSlotNumber,
                  child: Image.asset("images/$slotNumber2.png"))),
          Expanded(
            child: FlatButton(
                onPressed: setSlotNumber,
                child: Image.asset("images/$slotNumber3.png")),
          ),
        ],
      ),
    );
  }
}
