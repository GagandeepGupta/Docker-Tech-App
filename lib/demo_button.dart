import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'for_docker.dart';
import 'for_linux.dart';
import 'for_wordpress.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

import 'home.dart';

var webdata;

class dd extends StatefulWidget {
  dd({Key key}) : super(key: key);
  @override
  _ddState createState() => _ddState();
}

class _ddState extends State<dd> {
  dockerps() async {
    var url = "http://13.235.115.3/cgi-bin/commands/dockerps.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  dockerpsa() async {
    var url = "http://13.235.115.3/cgi-bin/commands/dockerpsa.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  prune() async {
    var url = "http://13.235.115.3/cgi-bin/commands/prune.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  showimages() async {
    var url = "http://13.235.115.3/cgi-bin/commands/showimages.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  pruneimages() async {
    var url = "http://13.235.115.3/cgi-bin/commands/pruneimages.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  /*delunusedimages() async {
    var url = "http://13.127.61.65/cgi-bin/commands/delunusedimages.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }*/

  /*statscontainer() async {
    var url = "http://13.127.61.65/cgi-bin/commands/statscontainer.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }*/

  version() async {
    var url = "http://13.235.115.3/cgi-bin/commands/version.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  /*web_ps_a() async {
    var url = "http://13.127.61.65/cgi-bin/commands/dockerpsa.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
      print(r.statusCode);
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        SizedBox(
          height: 12,
        ),
        Container(
          width: MediaQuery.of(context).size.width * .9,
          height: MediaQuery.of(context).size.height * 0.3,
          //color: Colors.black,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black,
          ),
          child: ListView(
            padding: EdgeInsets.all(20),
            children: [
              Text(
                webdata ?? ".",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
        Flexible(
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(10),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            scrollDirection: Axis.vertical,
            children: <Widget>[
              /////////////////______________________//////////////////////////
//////////////////////////////////////////////////////////////////////////////////\

//////////////////Show list of running containers//////////////////////////////////
//docker ps
              Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  //color: Colors.blue[300],
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text("Show list of running containers",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        height: 12,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          splashColor: Colors.greenAccent,
                          shape: StadiumBorder(),
                          onPressed: () {
                            dockerps();
                          },
                          child: Text('Click')),
                    ],
                  )),
//////////////////////Show list of all containers/////////////////////////////////
//docker ps -a
              Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  //color: Colors.blue[300],
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text("Show list of all containers",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        height: 12,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          splashColor: Colors.greenAccent,
                          shape: StadiumBorder(),
                          onPressed: () {
                            dockerpsa();
                          },
                          child: Text('Click')),
                    ],
                  )),
///////////////////////Delete stopped containers//////////////////////////
//docker container prune
              Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  //color: Colors.blue[300],
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text("Delete stopped containers",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        height: 12,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          splashColor: Colors.greenAccent,
                          shape: StadiumBorder(),
                          onPressed: () {
                            prune();
                          },
                          child: Text('Click')),
                    ],
                  )),
////////////////////Show a list of all images//////////////////
//docker images
              Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  //color: Colors.blue[300],
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text("Show a list of all images",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        height: 12,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          splashColor: Colors.greenAccent,
                          shape: StadiumBorder(),
                          onPressed: () {
                            showimages();
                          },
                          child: Text('Click')),
                    ],
                  )),
////////////////////Delete dangling images///////////////////////////
//docker image prune
              Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  //color: Colors.blue[300],
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text("Delete dangling images",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        height: 12,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          splashColor: Colors.greenAccent,
                          shape: StadiumBorder(),
                          onPressed: () {
                            pruneimages();
                          },
                          child: Text('Click')),
                    ],
                  )),
/*///////////////////////Delete all unused images///////////////////////////
//docker images prune -a
              Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  //color: Colors.blue[300],
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text("Delete all unused images",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        height: 12,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          splashColor: Colors.greenAccent,
                          shape: StadiumBorder(),
                          onPressed: () {
                            delunusedimages();
                          },
                          child: Text('Click')),
                    ],
                  )),
//////////////////////Show stats of running containers////////////////////
//docker stats
              Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  // color: Colors.blue[300],
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text("Show stats of running containers",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        height: 12,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          splashColor: Colors.greenAccent,
                          shape: StadiumBorder(),
                          onPressed: () {
                            statscontainer();
                          },
                          child: Text('Click')),
                    ],
                  )),*/
///////////////////////Show installed docker version///////////////
//docker version
              Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  //color: Colors.blue[300],
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text("Show installed docker version",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        height: 12,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          splashColor: Colors.greenAccent,
                          shape: StadiumBorder(),
                          onPressed: () {
                            version();
                          },
                          child: Text('Click')),
                    ],
                  )),

/////////////////////////////////////////////////////////////////////////////////////////////

              //////////////////////////////-----------------------/////////////////////
            ],
          ),
        )
      ]),
    );
  }
}
