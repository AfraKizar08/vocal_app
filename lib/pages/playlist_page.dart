import 'package:flutter/material.dart';

class PlaylistPage extends StatelessWidget {
  const PlaylistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
        padding: const EdgeInsets.all(16.0),
          children: [
            const Text(
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            PlaylistCard(
              playlistName: 'Relaxing Vibes',
              trackCount: 15,
            ),
            PlaylistCard(
              playlistName: 'Workout Hits',
              trackCount: 20,
            ),
            PlaylistCard(
              playlistName: 'Chill Beats',
              trackCount: 10,
            ),
            PlaylistCard(
              playlistName: 'Top 50',
              trackCount: 50,
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
      onTap: () {
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
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    playlistName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '$trackCount tracks',
                      fontSize: 14,
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
}
