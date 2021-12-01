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
        primarySwatch: Colors.pink,
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
      body: Column(
        children: const [
          ChatWidget()
          
        ],
      ),
    );
  }
}

class ChatWidget extends StatelessWidget {
  
  const ChatWidget({
    Key? key,
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1637361890611-69854d19360e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
            radius: 30,
          ),
          title: Text("Samueel"),
          subtitle: Row(
            children: const [
              Icon(Icons.done_all),
              Text("Hello"),
            ],
          ),
          trailing: const Text("12:00"),
        ),
      ),
    );
  }
}
