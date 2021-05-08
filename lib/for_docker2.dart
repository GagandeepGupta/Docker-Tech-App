import 'package:flutter/material.dart';
import 'package:test_docker1/home2.dart';
import 'package:url_launcher/url_launcher.dart';

class for_docker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: choices.length,
        child: Scaffold(
          drawer: NavDrawer(),
          appBar: AppBar(
            // leading: Icon(Icons.menu),
            title: const Text(
              'Docker Tech App',
              style: TextStyle(fontSize: 25),
            ),
            bottom: TabBar(
              isScrollable: true,
              tabs: choices.map<Widget>((Choice choice) {
                return Tab(
                  text: choice.title,
                  icon: Icon(choice.icon),
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: choices.map((Choice choice) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: ChoicePage(
                  choice: choice,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class Choice {
  final String title;
  final IconData icon;
  const Choice({this.title, this.icon});
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Terminal', icon: Icons.search),
  Choice(title: 'Launch Conatiner', icon: Icons.add_to_home_screen),
  Choice(title: 'Command Button', icon: Icons.radio_button_checked),
  Choice(title: 'Cheat Code ', icon: Icons.code),
  //Choice(title: 'TRAIN', icon: Icons.directions_railway),
  //Choice(title: 'WALK', icon: Icons.directions_walk),
  //Choice(title: 'BOAT', icon: Icons.directions_boat),
];

class ChoicePage extends StatelessWidget {
  const ChoicePage({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
    );
  }
}
