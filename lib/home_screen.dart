import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Home', icon: Icon(Icons.home)),
              Tab(text: 'Favorites', icon: Icon(Icons.favorite)),
              Tab(text: 'Profile', icon: Icon(Icons.person)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Home', style: textStyle)),
            Center(child: Text('Favorites', style: textStyle)),
            Center(child: Text('Profile', style: textStyle)),
          ],
        ),
      ),
    );
  }
}

const textStyle = TextStyle(fontSize: 40);
