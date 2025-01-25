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
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double appBarHeight = AppBar().preferredSize.height;
    double availableHeight = screenHeight - appBarHeight;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appBarHeight),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.black,
                width: 1.0,
              ),
            ),
          ),
          child: AppBar(
            title: const Text(
              'PROFILE',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            // Top side: Avatar and Info
            Container(
              height: availableHeight * 0.3,
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  // Avatar
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 16),
                  // User details and text
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Abhimanyu Binu',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'B Tech, 2nd year',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'ISTE Crypt',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'NUB',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Download icon on the right
                  IconButton(
                    icon: const Icon(
                      Icons.download,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () {},
                    tooltip: 'Download ID Card',
                  ),
                ],
              ),
            ),
            // Add a border here
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              height: 1.0,
              color: Colors.black,
            ),
            // Bottom side: Tabs for Personal and Club Info
            Expanded(
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: const TabBar(
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.black54,
                        indicatorColor: Colors.black,
                        tabs: [
                          Tab(text: 'Personal'),
                          Tab(text: 'Club'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          // Personal Info
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: ListView(
                              padding: const EdgeInsets.all(16),
                              children: [
                                _buildListTile('Club:','ISTE'),
                                _buildListTile('Blood Group', 'B+'),
                                _buildListTile('Date of Birth', '21-09-2005'),
                                _buildListTile('Phone Number', '6282555316'),
                                _buildListTile('Email', 'abhimanyu@nitk.edu.in'),
                                ListTile(
                                  title: const Text(
                                    'Download ISTE ID Card',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  trailing: const Icon(Icons.download,
                                      color: Colors.black),
                                  onTap: () {},
                                ),
                              ],
                            ),
                          ),
                          // Club Info
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: ListView(
                              padding: const EdgeInsets.all(16),
                              children: [
                                _buildListTile('SIG Name', 'Crypt'),
                                _buildListTile('Year Joined', '2024'),
                                _buildListTile('Position', 'NUB'),
                                _buildListTile('Number of Projects', '2'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static ListTile _buildListTile(String title, String subtitle) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black54,
        ),
      ),
    );
  }
}
