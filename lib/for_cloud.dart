import 'package:flutter/material.dart';
import 'animation/FadeAnimation.dart';
import 'home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

class for_cloud extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 1,
        child: Scaffold(
          drawer: NavDrawer(),
          appBar: AppBar(
            bottom: TabBar(
              isScrollable: false,
              tabs: [
                Tab(
                    icon: Icon(Icons.add_to_home_screen),
                    child: Center(
                      child: Text(
                        "Cloud Services",
                      ),
                    )),
              ],
            ),
            title: Text('Next Cloud'),
          ),
          body: TabBarView(
            children: [
              Cheatcode(),
            ],
          ),
        ),
      ),
    );
  }
}

class Cheatcode extends StatefulWidget {
  @override
  _CheatcodeState createState() => _CheatcodeState();
}

class _CheatcodeState extends State<Cheatcode> {
  String MYSQL_ROOT_PASSWORD,
      MYSQL_USER,
      MYSQL_PASSWORD,
      MYSQL_DATABASE,
      mysqlvol,
      name,
      image,
      version;
  var webdata;
  //String cmd;

  web(MYSQL_ROOT_PASSWORD, MYSQL_USER, MYSQL_PASSWORD, MYSQL_DATABASE, mysqlvol,
      name, image, version) async {
    var url =
        "http://13.235.115.3/cgi-bin/mysql2.py?mysqlvol=${mysqlvol}&MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}&MYSQL_USER=${MYSQL_USER}&MYSQL_PASSWORD=${MYSQL_PASSWORD}&MYSQL_DATABASE=${MYSQL_DATABASE}&name=${name}&image=${image}&version=${version}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  // print(webdata);

  /*check(cmd) async {
    var url = "http://192.168.43.224/cgi-bin/check.py?cmd=${cmd}";
    var r = await http.get(url);
    print(r.body);
  }*/
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
                child: FadeAnimation(
                  2,
                  Card(
                    child: Image(
                      image: AssetImage("nextcloud-logo.png"),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    //border: Border.all(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: <Widget>[
                    Card(
                      color: Colors.white,
                      margin: EdgeInsets.all(5),
                      child: TextField(
                        //selectionHeightStyle: ui.BoxHeightStyle.tight,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Volume Name',
                        ),
                        onChanged: (val) {
                          //print(val);
                          mysqlvol = val;
                        },
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      margin: EdgeInsets.all(5),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Root Password',
                        ),
                        onChanged: (val) {
                          //print(val);
                          MYSQL_ROOT_PASSWORD = val;
                        },
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      margin: EdgeInsets.all(5),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Mysql User Name',
                        ),
                        onChanged: (val) {
                          //print(val);
                          MYSQL_USER = val;
                        },
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      margin: EdgeInsets.all(5),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter User Password',
                        ),
                        onChanged: (val) {
                          //print(val);
                          MYSQL_PASSWORD = val;
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
                      margin: EdgeInsets.all(5),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Database Name',
                        ),
                        onChanged: (val) {
                          //print(val);
                          MYSQL_DATABASE = val;
                        },
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      margin: EdgeInsets.all(5),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter OS Name',
                        ),
                        onChanged: (val) {
                          //print(val);
                          name = val;
                        },
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      margin: EdgeInsets.all(5),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter OS Image',
                        ),
                        onChanged: (val) {
                          //print(val);
                          image = val;
                        },
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      margin: EdgeInsets.all(5),
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
                      //color: Colors.blue,
                      margin: EdgeInsets.all(20),
                      //padding: EdgeInsets.all(10)

                      child: MaterialButton(
                        minWidth: 30,
                        height: 50,
                        onPressed: () {
                          web(MYSQL_ROOT_PASSWORD, MYSQL_USER, MYSQL_PASSWORD,
                              MYSQL_DATABASE, mysqlvol, name, image, version);
                        },
                        color: Colors.indigo.shade100,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          "Click Here To Launch!!",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                          child: Text(
                        "OUTPUT",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.2,
                      //color: Colors.black,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                      ),
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
