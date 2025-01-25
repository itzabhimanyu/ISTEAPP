import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const TeamPage(),
    );
  }
}

class TeamPage extends StatelessWidget {
  const TeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Team members data
    final List<Map<String, String>> teamMembers = [
      {
        "name": "Ben Dover",
        "designation": "Convener",
        "photo": "assets/images/pfps/1.jpg"
      },
      {
        "name": "Ben Dover",
        "designation": "SIG-Head",
        "photo": "assets/images/pfps/2.jpg"
      },
      {
        "name": "Ben Dover",
        "designation": "Noob",
        "photo": "assets/images/pfps/3.jpg"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Members List"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: teamMembers.length,
        itemBuilder: (context, index) {
          final member = teamMembers[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(member["photo"]!),
              ),
              title: Text(
                member["name"]!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(member["designation"]!),
            ),
          );
        },
      ),
    );
  }
}
