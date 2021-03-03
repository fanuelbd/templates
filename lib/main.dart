import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
          primarySwatch: Colors.deepPurple, primaryColor: Colors.deepPurple),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Techino Club"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          padding: const EdgeInsets.all(0.0),
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Developd By:Fanuel Eshetu"),
              accountEmail: new Text("fanuel@techino.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.red,
                backgroundImage: AssetImage('assets/fa.jpg'),
              ),
            ),
            new ListTile(
              title: new Text('Contact as'),
              trailing: new Icon(Icons.contact_phone_rounded),
            ),
            new ListTile(
              title: new Text('Join as'),
              trailing: new Icon(Icons.person_add),
            ),
            new ListTile(
              title: new Text('Login'),
              trailing: new Icon(Icons.login_rounded),
            ),
            new ListTile(
              title: new Text('Setting'),
              trailing: new Icon(Icons.settings_applications),
            ),
            SizedBox(
              height: 300,
            ),
            new ListTile(
              title: new Text('Close'),
              trailing: new Icon(Icons.close_fullscreen_outlined),
              onTap: () => Navigator.of(context).pop(),
            ),
            SizedBox(
              height: 20,
            ),
            new Center(
              child: Text('© copyrights'),
            ),
          ],
        ),
      ),
      body: MyBody(),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.deepPurple,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_rounded),
            label: 'Leaders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note_rounded),
            label: 'Programes',
          ),

          // BottomNavigationBarItem(
          //   icon: Icon(Icons.add_circle_rounded),
          //   label: 'Programes',

          // ),
        ],
      ),
    );
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text('Coming soon'),
      ),
    );
  }
}
