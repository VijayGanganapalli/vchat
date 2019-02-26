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
    {
      'subject': 'My first message',
      'body':
          'This is another message and is very very long so you can see and read the message. This is another message and is very very long so you can see this message.'
    },
    {
      'subject': 'My second message',
      'body':
          'This is another message and is very very long so you can see and read the message.'
    },
    {
      'subject': 'You won lottery',
      'body':
          'This is another message and is very very long so you can see and read the message.'
    },
    {
      'subject': 'You should read this',
      'body':
          'This is another message and is very very long so you can see and read the message.'
    },
    {
      'subject': 'You won lottery again',
      'body':
          'This is another message and is very very long so you can see and read the message.'
    },
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
          var message = messages[index];
          return ListTile(
            isThreeLine: true,
            leading: CircleAvatar(
              child: Text('VK'),
            ),
            title: Text(message['subject']),
            subtitle: Text(
              message['body'],
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          );
        },
      ),
    );
  }
}
