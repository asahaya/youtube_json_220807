import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<User> users = getUsers();
  static List<User> getUsers() {
    const data = [
      {
        "username": "inio",
        "email": "asano@gmail.com",
        "urlAvatar":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Inio_Asano_at_TCAF_2018.jpg/1200px-Inio_Asano_at_TCAF_2018.jpg",
      },
      {
        "username": "tadanobu",
        "email": "asano@gmail.com",
        "urlAvatar":
            "data:image/jpeg;base64,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",
      },
    ];

    return data.map<User>(User.fromJson).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JSON DATA'),
        centerTitle: true, //中央揃え
      ),
      body: Center(child: buildUsers(users)),
    );
  }

  Widget buildUsers(List<User> users) {
    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final userDB = users[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(userDB.urlAvatar),
              ),
              title: Text(userDB.username),
              subtitle: Text(userDB.email),
            ),
          );
        });
  }
}

class User {
  final String username;
  final String email;
  final String urlAvatar;

  const User({
    required this.username,
    required this.email,
    required this.urlAvatar,
  });
  static User fromJson(jsondata) => User(
        username: jsondata['username'],
        email: jsondata['email'],
        urlAvatar: jsondata['urlAvatar'],
      );
}
