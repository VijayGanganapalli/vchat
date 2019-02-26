import 'package:flutter/material.dart';
import 'package:vchat/message_list.dart';

void main() => runApp(VchatApp());

class VchatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vchat',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MessageList(
        title: 'Vchat',
      ),
    );
  }
}

