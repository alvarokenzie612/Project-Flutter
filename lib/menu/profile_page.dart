import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundColor: Color(0xFF272727),
              child: Icon(Icons.person, size: 45, color: Colors.white),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Alvaro Kenzie',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '@alvarokenzie612 • 1.2K subscribers',
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF272727),
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              child: const Text('Manage Account'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF272727),
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              child: const Text('Share Channel'),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Divider(color: Color(0xFF272727), thickness: 1),
        ListTile(
          leading: const Icon(Icons.video_collection, color: Colors.redAccent),
          title: const Text(
            'Your videos',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
            size: 14,
          ),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.download, color: Colors.white),
          title: const Text(
            'Downloads',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.playlist_play, color: Colors.white),
          title: const Text(
            'Playlists',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          onTap: () {},
        ),
        const Divider(color: Color(0xFF272727), thickness: 1),
        ListTile(
          leading: const Icon(Icons.settings, color: Colors.white),
          title: const Text(
            'Settings',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.help_outline, color: Colors.white),
          title: const Text(
            'Help & feedback',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
