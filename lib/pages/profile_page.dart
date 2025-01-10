import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.deepPurple,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 20),
            Text(
              'Welcome, User!',
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(height: 10),
            const Text(
              'Enjoy exploring music!',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

extension on TextTheme {
  get headline1 => null;
}
