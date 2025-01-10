import 'package:flutter/material.dart';

class PlaylistPage extends StatelessWidget {
  const PlaylistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Playlists',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Discover Your Favorite Tunes',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Explore and listen to your playlists',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            PlaylistCard(
              playlistName: 'Relaxing Vibes',
              trackCount: 15,
              coverImage: 'assets/relaxing_vibes.jpeg',
              gradientColors: [Colors.blue, Colors.purple],
            ),
            PlaylistCard(
              playlistName: 'Workout Hits',
              trackCount: 20,
              coverImage: 'assets/workout_hits.jpeg',
              gradientColors: [Colors.orange, Colors.red],
            ),
            PlaylistCard(
              playlistName: 'Chill Beats',
              trackCount: 10,
              coverImage: 'assets/chill_beats.jpeg',
              gradientColors: [Colors.green, Colors.teal],
            ),
            PlaylistCard(
              playlistName: 'Top 50',
              trackCount: 50,
              coverImage: 'assets/top_50.jpeg',
              gradientColors: [Colors.indigo, Colors.deepPurple],
            ),
          ],
        ),
      ),
    );
  }
}

class PlaylistCard extends StatelessWidget {
  final String playlistName;
  final int trackCount;
  final String coverImage;
  final List<Color> gradientColors;

  const PlaylistCard({
    Key? key,
    required this.playlistName,
    required this.trackCount,
    required this.coverImage,
    required this.gradientColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to playlist details
      },
      child: Container(
        height: 120, // Fixed height
        width: double.infinity, // Ensure full width
        margin: const EdgeInsets.only(bottom: 16.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12), // Smaller radius
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              child: Image.asset(
                coverImage,
                width: 100, // Fixed width for image
                height: 120, // Match container height
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    playlistName,
                    style: const TextStyle(
                      fontSize: 18, // Reduced font size
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '$trackCount tracks',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 28, // Reduced icon size
              ),
            ),
          ],
        ),
      ),
    );
  }
}
