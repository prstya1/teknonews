import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news_app_ui/SignIn/pages/auth_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_news_app_ui/Profile/edit.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static const routeName = '/profile';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late User user;
  late String _displayName;

  @override
  void initState() {
    super.initState();
    user = FirebaseAuth.instance.currentUser!;
    _loadDisplayName();
  }

  Future<void> _loadDisplayName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _displayName = prefs.getString('displayName') ?? user.displayName ?? 'No Name';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              // Navigasi ke halaman login atau halaman beranda setelah logout
              Navigator.pushNamed(context, AuthPage.routeName);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('lib/SignIn/images/1.jpg'),
            ),
            const SizedBox(height: 16),
            Text(
              _displayName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              user.email!,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 24),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Edit Profile'),
              onTap: () async {
                await Navigator.pushNamed(context, EditProfileScreen.routeName);
                // Refresh profil setelah pengguna kembali dari halaman Edit
                _loadDisplayName();
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.lock),
              title: const Text('Change Password'),
              onTap: () {
                // Tindakan ketika menu Change Password diklik
                // Mungkin menampilkan dialog atau navigasi ke halaman khusus ganti password
              },
            ),
          ],
        ),
      ),
    );
  }
}
