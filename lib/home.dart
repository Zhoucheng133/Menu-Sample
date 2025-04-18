import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:menu_sample/item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      header: FHeader(
        title: Padding(
          padding: const EdgeInsets.only(left: 10, top: 5),
          child: Text("Sample!")
        ),
      ),
      content: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: 100,
        itemBuilder: (BuildContext context, int index)=>Item(index: index)
      ),
    );
  }
}