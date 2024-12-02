import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('I S T E'),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: [
          const Icon(Icons.calendar_today),
        ],
      ),
      body: Container(
        color : Colors.lightBlue[100],
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 250,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.lightBlue[200],
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 74,
                    backgroundImage: AssetImage('assets/images/mepic.png'),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'ABHIMANYU BINU',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'NUB',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Upcoming events',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  eventTile('Square one'),
                  eventTile('RR party'),
                  eventTile('KSS session'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget eventTile(String eventName) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.lightBlue[200],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 40,
            backgroundColor: Colors.grey
          ),
          const SizedBox(width: 16),
          Text(
            eventName,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
