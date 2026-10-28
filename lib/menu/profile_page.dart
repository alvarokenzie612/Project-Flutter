import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // BAGIAN BANNER & HEADER PROFIL (MIRIP BANNER YOUTUBE)
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            // Banner Background Merah Gelap ROG
            Container(
              height: 130,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFD32F2F),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.cast, color: Colors.white, size: 20),
                      SizedBox(width: 16),
                      Icon(Icons.notifications_none, color: Colors.white, size: 20),
                      SizedBox(width: 16),
                      Icon(Icons.search, color: Colors.white, size: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        
        // FOTO PROFIL & INFORMASI UTAMA DI BAWAH BANNER
        Transform.translate(
          offset: const Offset(0, -35),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                // Lingkaran Foto Profil dengan Border Putih/Gelap
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    color: Color(0xFF121212),
                    shape: BoxShape.circle,
                  ),
                  child: const CircleAvatar(
                    radius: 45,
                    backgroundColor: Color(0xFF272727),
                    child: Icon(Icons.person, size: 55, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Alvaro Kenzie',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  '@alvarokenzie612 • 1.2K subscribers • 45 videos',
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 14),
                
                // TOMBOL AKSI (Manage Account & Share Channel)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF272727),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('Manage Account'),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF272727),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('Share Channel'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        const Divider(color: Color(0xFF272727), thickness: 1),

        // DAFTAR MENU UTAMA
        ListTile(
          leading: const Icon(Icons.video_collection, color: Colors.redAccent),
          title: const Text('Your videos', style: TextStyle(color: Colors.white, fontSize: 15)),
          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 14),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.download, color: Colors.white),
          title: const Text('Downloads', style: TextStyle(color: Colors.white, fontSize: 15)),
          subtitle: const Text('25 videos downloaded', style: TextStyle(color: Colors.grey, fontSize: 12)),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.playlist_play, color: Colors.white),
          title: const Text('Playlists', style: TextStyle(color: Colors.white, fontSize: 15)),
          onTap: () {},
        ),
        
        const Divider(color: Color(0xFF272727), thickness: 1),

        ListTile(
          leading: const Icon(Icons.settings, color: Colors.white),
          title: const Text('Settings', style: TextStyle(color: Colors.white, fontSize: 15)),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.help_outline, color: Colors.white),
          title: const Text('Help & feedback', style: TextStyle(color: Colors.white, fontSize: 15)),
          onTap: () {},
        ),
      ],
    );
  }
}