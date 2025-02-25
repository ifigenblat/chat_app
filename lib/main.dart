import 'package:chat_app/counter_stateful.dart';
import 'package:chat_app/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget{
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Chat App!",
      theme: ThemeData(primarySwatch: Colors.deepPurple),
        //home: CounterStateful(buttonColor: Colors.blue));
        //home: ChatPage());
        home: LoginPage());
  }

}




