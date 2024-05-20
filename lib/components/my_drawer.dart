import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});


  //logout

  void logout() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // Drawer header
          const DrawerHeader(
            child: Icon(Icons.favorite),
          ),

          const SizedBox(height: 25,),

          // Home tile
          Padding(
            padding: const EdgeInsets.only(left: 25.0, bottom: 25),
            child: ListTile(
              leading: const Icon(Icons.home),
              title: const Text("H O M E"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),


          //profile tile

          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(
              leading: const Icon(Icons.person),
              title: const Text("P R O F I L E"),
              onTap: () {
                Navigator.pop(context);
                
                Navigator.pushNamed(context, '/profile_page');
              },
            ),
          ),

          //user tile

          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(
              leading: const Icon(Icons.group),
              title: const Text("U S E R S"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/users_page');

              },
            ),
          ),

          //logout tile

          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("L O G O U T"),
              onTap: () {
                Navigator.pop(context);

                logout();
              },
            ),
          ),
        ],
      ),
    );

  }
}
