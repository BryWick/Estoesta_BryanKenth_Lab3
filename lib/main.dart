import 'package:flutter/material.dart';

void main() => runApp(const ProfileApp());

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Lab',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 78, 0, 12),
        appBar: AppBar(
          title: const Text('Profile'),
          backgroundColor: const Color.fromARGB(255, 78, 0, 12),
          foregroundColor: Colors.white
        ),
        body: const Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: CompleteProfileCard(),
            ),
          ),
        ),
      ),
    );
  }
}

class CompleteProfileCard extends StatelessWidget {
  const CompleteProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Card(
        color: Colors.white,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 45, left: 24, right: 24, bottom: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 120,
                height: 120,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/formal_id_photo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              const Text(
                'Bryan Kenth F. Estoesta',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Cormorant',
                  fontWeight: FontWeight.w900,
                  fontSize: 26,
                  color: Color.fromARGB(255, 198, 40, 40),
                ),
              ),
              const SizedBox(height: 8),

              const Text(
                'CPU Software Engineering Student',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black54,
                ),
              ),
              
              const Text(
                'Tough times never last. Only tough people last.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 24),


              const Divider(color: Color.fromARGB(50, 198, 40, 40)),
              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildStatItem('911', 'Posts'),
                  _buildStatItem('1.4k', 'Followers'),
                  _buildStatItem('1k', 'Following'),
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatItem(String value, String label) {
    IconData statIcon;
    if (label == 'Posts') {
      statIcon = Icons.grid_on_rounded;
    } else if (label == 'Followers') {
      statIcon = Icons.people_alt_rounded;
    } else {
      statIcon = Icons.person_add_alt_1_rounded;
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 235, 238),
            shape: BoxShape.circle,
          ),
          child: Icon(
            statIcon,
            size: 22,
            color: const Color.fromARGB(255, 198, 40, 40),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}