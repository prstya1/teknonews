import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news_app_ui/Profile/profile_page.dart';
import 'package:flutter_news_app_ui/SignIn/pages/auth_page.dart';


class DrawerPage extends StatelessWidget {
   DrawerPage({super.key});

final user = FirebaseAuth.instance.currentUser!;
  static const routeName = '/drawer';

void signUserOut(){
  FirebaseAuth.instance.signOut();
}
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: const Text('Tekno News !'),
            automaticallyImplyLeading: false, // Hide default back button
            actions: [
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context); // Close drawer
                },
              ),
            ],
          ),
          UserAccountsDrawerHeader(
            accountName: const Text('Aldi Prasetya'),
            accountEmail: Text(user.email!),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: const Icon(
                Icons.person,
                color: Colors.grey,
              ),
            ),
          ),
          ListTile(
            title: const Text('Profile'),
            leading: const Icon(Icons.person),
            onTap: () {
              Navigator.pushNamed(context, ProfileScreen.routeName);
              
            },
          ),
          ListTile(
            title: const Text('Log Out'),
            leading: IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              // Navigasi ke halaman login atau halaman beranda setelah logout
              Navigator.pushNamed(context, AuthPage.routeName);
            },
          ),
                         
          ),
        ],
      ),
    );
  }
}
