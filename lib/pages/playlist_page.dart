import 'package:flutter/material.dart';

class PlaylistPage extends StatelessWidget {
  const PlaylistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Playlists'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            'Your Favorite Collections',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          PlaylistCard(
            playlistName: 'Relaxing Vibes',
            trackCount: 15,
            coverImage: 'assets/relaxing_vibes.jpg',
          ),
          PlaylistCard(
            playlistName: 'Workout Hits',
            trackCount: 20,
            coverImage: 'assets/workout_hits.jpg',
          ),
          PlaylistCard(
            playlistName: 'Chill Beats',
            trackCount: 10,
            coverImage: 'assets/chill_beats.jpg',
          ),
          PlaylistCard(
            playlistName: 'Top 50',
            trackCount: 50,
            coverImage: 'assets/top_50.jpg',
          ),
        ],
      ),
    );
  }
}

class PlaylistCard extends StatelessWidget {
  final String playlistName;
  final int trackCount;
  final String coverImage;

  const PlaylistCard({
    Key? key,
    required this.playlistName,
    required this.trackCount,
    required this.coverImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 16.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          // Navigate to the playlist details page
        },
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              child: Image.asset(
                coverImage,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    playlistName,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '$trackCount tracks',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey.shade600,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}
