import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'message.dart';

class MessageList extends StatefulWidget {
  final String title;

  MessageList({Key key, this.title}) : super(key: key);

  @override
  MessageListState createState() {
    return new MessageListState();
  }
}

class MessageListState extends State<MessageList> {
  var messages = const [];

  Future loadMessageList() async {
    String content = await rootBundle.loadString('data/message.json');
    List collection = json.decode(content);

    List<Message> _messages =
        collection.map((json) => Message.fromJson(json)).toList();

    setState(() {
      messages = _messages;
    });
  }

  @override
  void initState() {
    loadMessageList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemCount: messages.length,
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemBuilder: (BuildContext context, int index) {
          Message message = messages[index];
          return ListTile(
            isThreeLine: true,
            leading: CircleAvatar(
              child: Text('VK'),
            ),
            title: Text(message.subject),
            subtitle: Text(
              message.body,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          );
        },
      ),
    );
  }
}
