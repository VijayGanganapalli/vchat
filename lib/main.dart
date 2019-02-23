import 'package:flutter/material.dart';

void main() => runApp(VchatApp());

class VchatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vchat',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: HomeScreen(
        title: 'Vchat',
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String title;
  final messages = const [
    'My first message',
    'My second message',
    'You won lottery',
    'You should read this',
    'You won lottery again'
  ];

  HomeScreen({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.separated(
        itemCount: messages.length,
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemBuilder: (BuildContext context, int index) {
          var title = messages[index];
          return ListTile(
            isThreeLine: true,
            leading: CircleAvatar(
              child: Text('VK'),
            ),
            title: Text(title),
            subtitle: Text(
                'This is another message and is very very long so you can see and read.'),
          );
        },
      ),
    );
  }
}
