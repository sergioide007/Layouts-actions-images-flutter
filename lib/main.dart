import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(65.0), // here the desired height
          child: AppBar(
              leading: Icon(Icons.menu),
              title: Text('Building Layouts'),
              backgroundColor: Colors.deepOrangeAccent,
              elevation: 50.0,
              actions: <Widget>[
                InkWell(
                  child: Icon(Icons.schedule),
                  onTap: () {
                    print('Schedule');
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.navigate_next),
                  tooltip: 'Next page',
                  onPressed: () {
                    print('Next page');
                  },
                ),
              ],     
          ),     
        ),
        body: Center(
          child: Text(
            'Hello Flutter ISW',
            style: TextStyle(fontSize: 24),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(FontAwesomeIcons.angry),
          onPressed: () {
            print('onPressed...');
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.mail),
              title: new Text('Messages'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile')
            )
          ],
        ),
      ),
    );
  }
}
