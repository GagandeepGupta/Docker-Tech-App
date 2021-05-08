import 'package:flutter/material.dart';
import 'home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'animation/FadeAnimation.dart';

class for_github extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: NavDrawer(),
          appBar: AppBar(
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  icon: Icon(Icons.radio_button_checked),
                  child: Center(
                    child: Text(
                      "Connect Github",
                    ),
                  ),
                ),
                Tab(
                  icon: Icon(Icons.code),
                  child: Center(
                      child: Text(
                    "Cheat Code",
                  )),
                )
              ],
            ),
            title: Text('GitHub'),
          ),
          body: TabBarView(
            children: [
              dockercontiner(),
              Icon(Icons.directions_car),
            ],
          ),
        ),
      ),
    );
  }
}

class dockercontiner extends StatefulWidget {
  @override
  _dockercontinerState createState() => _dockercontinerState();
}

class _dockercontinerState extends State<dockercontiner> {
  String vol, link;

  var webdata;
  web(vol, giturl) async {
    var url =
        "http://13.235.115.3/cgi-bin/git/gitfile.py?giturl=${giturl}&vol=${vol}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
      print(webdata);
    });
  }

  @override
  Widget build(BuildContext context) {
    var design = Center(
      child: Container(
          width: double.infinity,
          height: double.infinity,
          //color: Colors.grey,
          decoration: BoxDecoration(
            //color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Center(
                child: Container(
                  child: Image(
                    image: AssetImage("git.jpeg"),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    border: Border.all(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: <Widget>[
                    Card(
                      color: Colors.white,
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Volume Name',
                        ),
                        onChanged: (val) {
                          //print(val);
                          vol = val;
                        },
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Github Url',
                        ),
                        onChanged: (val) {
                          //print(val);
                          link = val;
                        },
                      ),
                    ),
                    Container(
                      color: Colors.blue,
                      margin: EdgeInsets.all(20),
                      //padding: EdgeInsets.all(10)
                      child: FlatButton(
                          onPressed: () {
                            web(vol, link);
                          },
                          child: Text("Click Here To Launch!!")),
                    ),
                    Container(
                      child: Center(
                          child: Text(
                        "OUTPUT",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      )),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.2,
                      color: Colors.black,
                      child: Text(
                        webdata ?? ".",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              )
            ],
          )

          /*Row(children: <Widget>[
                    Container(
                      width: 200,
                      height: 50,
                      color: Colors.amber,
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter cmd',
                        ),
                        onChanged: (val) {
                          //print(val);
                          cmd = val;
                        },
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 50,
                      color: Colors.green,
                      margin: EdgeInsets.all(10),
                      //padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      child: FlatButton(
                          onPressed: () {
                            check(cmd);
                          },
                          child: Text("Check cmd!!")),
                    ),
                  ])*/
          /*Container(
                    width: 100,
                    height: 100,
                    color: Colors.pink,
                    alignment: Alignment.center,
                    child: Text('Box1'),
                  )*/

          ),
    );
    return design;
  }
}
