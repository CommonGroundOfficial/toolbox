import 'package:flutter/material.dart';

void main() => runApp(MachinistToolboxApp());

class MachinistToolboxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Machinist Toolbox',
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<String> tools = [
    'Speeds & Feeds Calculator',
    'Tap Drill Chart',
    'Thread Size Chart',
    'Bolt Circle Calculator',
    'Unit Converter',
    'Material Hardness Chart'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Machinist Toolbox')),
      body: ListView.builder(
        itemCount: tools.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(tools[index]),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
