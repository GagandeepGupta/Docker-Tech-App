import 'package:flutter/material.dart';
import 'package:test_docker1/for_docker2.dart';
import 'package:url_launcher/url_launcher.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('docker_image.jpg'))),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            title: Text('Home'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(
              Icons.opacity,
              color: Colors.blue,
            ),
            title: Text('Docker'),
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => for_docker()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.opacity,
              color: Colors.blue,
            ),
            title: Text('Docker Docs'),
            onTap: () {
              launch("https://docs.docker.com/");
            },
          ),
          ListTile(
            leading: Icon(
              Icons.opacity,
              color: Colors.blue,
            ),
            title: Text('Docker Hub'),
            onTap: () {
              launch("https://hub.docker.com/");
            },
          ),
          ListTile(
            leading: Icon(
              Icons.opacity,
              color: Colors.blue,
            ),
            title: Text('Linux'),
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => for_docker()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.opacity,
              color: Colors.blue,
            ),
            title: Text('Joomla'),
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => for_docker()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.opacity,
              color: Colors.blue,
            ),
            title: Text('Wordpress'),
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => for_docker()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.cloud,
              color: Colors.blue,
            ),
            title: Text('NextCloud'),
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => for_docker()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.opacity,
              color: Colors.blue,
            ),
            title: Text('Drupal'),
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => for_docker()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.opacity,
              color: Colors.blue,
            ),
            title: Text('MySQL'),
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => for_docker()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.opacity,
              color: Colors.blue,
            ),
            title: Text('GitHub'),
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => for_docker()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.not_listed_location,
              color: Colors.blue,
            ),
            title: Text('Help'),
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => for_docker()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.not_listed_location,
              color: Colors.blue,
            ),
            title: Text('Help'),
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => for_docker()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.blue,
            ),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(
              Icons.border_color,
              color: Colors.blue,
            ),
            title: Text('Feedback'),
            onTap: () => launch(
                'https://docs.google.com/forms/d/1xS_bK7v3wMlMR6ByMxOckfNCxsVqxhOjg_kdYCF2n7Y/viewform?edit_requested=true'),
          ),
          ListTile(
            leading: Icon(
              Icons.account_circle,
              color: Colors.blue,
            ),
            title: Text('About us'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
