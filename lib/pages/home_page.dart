import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vocals Only Music'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back!',
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(height: 20),
            const Text(
              'Your recent tracks:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  MusicCard(
                    title: 'Acoustic Vibes',
                    subtitle: 'Artist: John Doe',
                  ),
                  MusicCard(
                    title: 'Melody Vocals',
                    subtitle: 'Artist: Jane Smith',
                  ),
                  MusicCard(
                    title: 'Harmonic Bliss',
                    subtitle: 'Artist: The Vocal Group',
                  ),
                ],
              ),
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

class MusicCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const MusicCard({required this.title, required this.subtitle, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.deepPurple,
          child: const Icon(Icons.music_note, color: Colors.white),
        ),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: IconButton(
          icon: const Icon(Icons.play_arrow, color: Colors.deepPurple),
          onPressed: () {
            // Play audio action
          },
        ),
      ),
    );
  }
}
