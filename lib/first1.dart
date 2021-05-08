import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_docker1/for_docker.dart';
import 'package:test_docker1/for_linux.dart';
import 'package:test_docker1/for_setting.dart';
import 'package:test_docker1/for_wordpress.dart';
import 'package:url_launcher/url_launcher.dart';

import 'home.dart';

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData.dark()
      // primarySwatch: Colors.blue,
      // ),
      // ,
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Docker Tech App'),
      ),
      body: Column(children: <Widget>[
        Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: Image.asset("first_gif.gif")),
        Grid_design()
      ]),
    );
  }
}

class Grid_design extends StatefulWidget {
  @override
  _Grid_designState createState() => _Grid_designState();
}

class _Grid_designState extends State<Grid_design> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue[300],
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset(
                    "assets/docker.jpg",
                    height: 80,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Docker",
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )),
                  SizedBox(
                    height: 1,
                  ),
                  RaisedButton(
                    child: Text("Click"),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => for_docker()),
                    ),
                  ),
                ],
              )),
          Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue[300],
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset("assets/docker_docs.png", height: 80),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Docker Docs",
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )),
                  SizedBox(
                    height: 1,
                  ),
                  RaisedButton(
                      child: Text("Click"),
                      onPressed: () => launch("https://docs.docker.com/")),
                ],
              )),
          Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue[300],
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset(
                    "assets/docker_hub.jpg",
                    height: 80,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Docker Hub",
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )),
                  SizedBox(
                    height: 1,
                  ),
                  RaisedButton(
                    child: Text("Click"),
                    onPressed: () => launch("https://hub.docker.com/"),
                  ),
                ],
              )), //gagan_deep_gupta

          Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue[300],
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset("assets/linux_img.png", height: 80),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Linux",
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )),
                  SizedBox(
                    height: 1,
                  ),
                  RaisedButton(
                    child: Text("Click"),
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => for_linux())),
                  ),
                ],
              )),
          Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue[300],
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset("assets/wordpress_img2.jpg", height: 80),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Wordpress",
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )),
                  SizedBox(
                    height: 1,
                  ),
                  RaisedButton(
                    child: Text("Click"),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => for_wordpress()),
                    ),
                  ),
                ],
              )),
          Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue[300],
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset("assets/setting2.jpg", height: 80),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Setting",
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )),
                  SizedBox(
                    height: 1,
                  ),
                  RaisedButton(
                    child: Text("Click"),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => for_setting()),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
