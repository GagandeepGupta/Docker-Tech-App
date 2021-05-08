import 'package:flutter/material.dart';
import 'home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class for_drupal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          drawer: NavDrawer(),
          appBar: AppBar(
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                    icon: Icon(Icons.search),
                    child: Center(
                      child: Text("Terminal"),
                    )),
                Tab(
                    icon: Icon(Icons.add_to_home_screen),
                    child: Center(
                      child: Text(
                        "Launch Container",
                      ),
                    )),
                Tab(
                  icon: Icon(Icons.radio_button_checked),
                  child: Center(
                    child: Text(
                      "Command  Prompt",
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
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              dockercontiner(),
              Icon(Icons.directions_bike),
              Icon(Icons.dashboard)
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
  String vol, name, port, defaultport, image, version, networkname, mount;
  var webdata;
  web(vol, name, port, defaultport, image, version, networkname, mount) async {
    var url =
        "http://13.235.115.3/cgi-bin/docker_os/dockercontainer1.py?vol=${vol}&name=${name}&port=${port}&defaultport=${defaultport}&image=${image}&version=${version}&networkname=${networkname}&mount=${mount}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
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
                    image: AssetImage("aa.jpeg"),
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
                          labelText: 'Default port Number',
                        ),
                        onChanged: (val) {
                          //print(val);
                          defaultport = val;
                        },
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Network name',
                        ),
                        onChanged: (val) {
                          //print(val);
                          networkname = val;
                        },
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Mount',
                        ),
                        onChanged: (val) {
                          //print(val);
                          mount = val;
                        },
                      ),
                    ),
                    /*
                  Container(
                    width: 200,
                    height: 30,
                    color: Colors.amber,
                    alignment: Alignment.center,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'db name',
                      ),
                      onChanged: (val) {
                        //print(val);
                        WORDPRESS_DB_NAME = val;
                      },
                    ),
                  ),*/
                    Card(
                      color: Colors.white,
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Port',
                        ),
                        onChanged: (val) {
                          //print(val);
                          port = val;
                        },
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'OS Name',
                        ),
                        onChanged: (val) {
                          //print(val);
                          name = val;
                        },
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'OS Image',
                        ),
                        onChanged: (val) {
                          //print(val);
                          image = val;
                        },
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Image version',
                        ),
                        onChanged: (val) {
                          //print(val);
                          version = val;
                        },
                      ),
                    ),
                    Container(
                      color: Colors.blue,
                      margin: EdgeInsets.all(20),
                      //padding: EdgeInsets.all(10)
                      child: FlatButton(
                          onPressed: () {
                            web(vol, name, port, defaultport, image, version,
                                networkname, mount);
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
