// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test/screen/accountInfo.dart';
import 'package:test/screen/login.dart';
import 'package:test/widgets/listTileDrawer.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  static const Color headerBackgroundColor = Color.fromARGB(255, 34, 59, 136);
  static const Color iconColor = Colors.white;
  static const Color drawerBackgroundColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: drawerBackgroundColor,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 230,
            color: headerBackgroundColor,
            child: const DrawerHeader(
              child: Icon(
                Icons.person,
                color: iconColor,
                size: 64,
              ),
            ),
          ),
          MyListTile(
            icon: Icons.home,
            title: 'H O M E ',
            onTap: () => Navigator.pop(context),
          ),
          MyListTile(
            icon: Icons.person,
            title: 'P R O F I L E ',
            onTap: () {
              Navigator.pushNamed(
                context,
                Accountinfo.id,
              );
            },
          ),
          MyListTile(
            icon: Icons.logout,
            title: 'L O G O U T ',
            onTap: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.of(context)
                  .pushNamedAndRemoveUntil(LoginScreen.id, (route) => false);
            },
          )
        ],
      ),
    );
  }
}
