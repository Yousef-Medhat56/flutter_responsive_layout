import 'package:flutter/material.dart';

var myDefaultBg = Colors.grey.shade300;

var myAppBar = AppBar(
  backgroundColor: Colors.grey.shade900,
  foregroundColor: Colors.white,
);

var myDrawer = const Drawer(
  child: Column(
    children: [
      DrawerHeader(child: Icon(Icons.favorite)),
      ListTile(
        leading: Icon(Icons.home),
        title: Text("Dashboard"),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text("Settings"),
      ),
      ListTile(
        leading: Icon(Icons.chat),
        title: Text("Messages"),
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text("Logout"),
      ),
    ],
  ),
);
