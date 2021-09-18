import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('MyApp'),
            centerTitle: true,
            leading: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    print('hello');
                  },
                ),
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_none),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              )
            ],
            //backgroundColor: Colors.pink,
            //for Shado of bar
            elevation: 4,
            //titleSpacing: 5,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.red],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
            ),
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 4,
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'home',
                ),
                Tab(
                  icon: Icon(Icons.star),
                  text: 'Feed',
                ),
                Tab(
                  icon: Icon(Icons.face),
                  text: 'Profile',
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: 'Settings',
                )
              ],
            ),
          ),
          /*body: TabBarView(
            children: [
              buildPage('Home page'),
              buildPage('Feed page'),
              buildPage('Profile page'),
              buildPage('Settings page'),
            ],
          ),*/
        ),
      ),
    );
  }

  Widget buildPage(String text) {
    return Center(
      child: Text(
        text,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
