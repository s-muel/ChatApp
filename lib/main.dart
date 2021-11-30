import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ChatApp(),
    );
  }
}

class ChatApp extends StatelessWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Trial App"),
        actions: const [Icon(Icons.search), Icon(Icons.more)],
      ),
      body: const Center(
        child: CircleAvatar(
          radius: 70,
          backgroundColor: Colors.blue,
          backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1637361890611-69854d19360e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
        ),
      ),
    );
  }
}
