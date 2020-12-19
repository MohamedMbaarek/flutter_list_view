import 'package:flutter/material.dart';

void main() {
  runApp(EmailApp());
}

class EmailApp extends StatelessWidget {
  static const AppBarcolour = Color(0xff434343);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Email App',
      theme: ThemeData(
        primaryColor: AppBarcolour,
      ),
      home: MyHomePage(title: 'Messages'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  var names = const [
    "Mohamed",
    "Hamza",
    "Bilel",
    "Sarah",
    "Yasmine",
    'Sami',
    "Ahmed",
    "Wiem",
    "Anis"
  ];

  var messages = const [
    "Message1",
    'Message2',
    "Message3",
    "Message4",
    "Message5",
    "Message6",
    "Message7",
    "Message8",
    "Message9"
  ];

  MyHomePage({this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff000000),
        appBar: AppBar(title: Text(this.title, textAlign: TextAlign.center)),
        body: ListView.separated(
          padding: EdgeInsets.all(14.0),
          itemCount: names.length,
          scrollDirection: Axis.vertical,
          separatorBuilder: (context, index) => Divider(
            color: Colors.white,
          ),
          itemBuilder: (BuildContext context, int index) {
            var title = names[index];
            var message = messages[index];
            return ListTile(
              title: Text(
                title,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              isThreeLine: true,
              leading: CircleAvatar(
                child: Text("C"),
              ),
              subtitle: Text(
                message,
                style: TextStyle(color: Colors.white),
              ),
            );
          },
        ));
  }
}
