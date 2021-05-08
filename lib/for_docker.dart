import 'package:flutter/material.dart';
import 'package:test_docker1/dynamic.dart';
import 'animation/FadeAnimation.dart';
import 'demo_button.dart';
import 'home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class for_docker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
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
                      "Static Button",
                    ),
                  ),
                ),
                Tab(
                  icon: Icon(Icons.radio_button_checked),
                  child: Center(
                    child: Text(
                      "Dynamic Button",
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
            title: Text('Docker'),
          ),
          body: TabBarView(
            children: [
              Myterminal(),
              dockercontiner(),
              dd(),
              for_dynamic(),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Card(
              color: Colors.blue[100],
              child: ListTile(
                //leading: FlutterLogo(size: 26.0),
                title: Text('Run a new container \n ',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    )),

                subtitle: ListBody(
                  children: [
                    Text("Start a new Container from an Image:\n",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text("docker run IMAGE "),
                    Text(
                      "ex:-> docker run httpd \n",
                    ),
                    Text("For assign it a name:\n",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text(
                      "docker run --name CONTAINER IMAGE",
                    ),
                    Text("docker run httpd \n"),
                    Text("For assign its Port Number:\n",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text(" docker run -p HOSTPORT:CONTAINERPORT IMAGE "),
                    Text(" docker run -p 8080:80 httpd \n"),
                    Text("Start Container in background:\n",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text(" docker run -d  IMAGE "),
                    Text(" docker run -d httpd "),
                  ],
                ), //trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                //leading: FlutterLogo(size: 26.0),
                title: Text('Manage Container \n ',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    )),

                subtitle: ListBody(
                  children: [
                    Text("Show a list of  Running Container:\n",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text("docker ps \n"),
                    Text("Show a list of all stop container:\n",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text("docker ps -a\n"),
                    Text("Delete a container:\n",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text("docker rm  CONTAINER"),
                    Text("docker  rm  httpd\n"),
                    Text("Delete a running container:\n",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text("docker rm -f CONTAINER"),
                    Text("docker  rm -f httpd\n"),
                    Text("Stop a running container:\n",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text("docker stop CONTAINER"),
                    Text("docker stop httpd\n"),
                    Text("Delete a Stoped container:\n",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text("docker CONTAINER prune"),
                    Text("docker httpd prune\n"),
                    Text("Rename a container:\n",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text("docker rename OLD_NAME NEW_NAME"),
                    Text("docker rename myos1 myos2\n"),
                    Text("Create an image out of container:\n",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text("docker commit CONTAINER "),
                    Text("docker commit httpd\n"),
                  ],
                ), //trailing: Icon(Icons.more_vert),
              ),
            ),
            // Card(
            //   child: ListTile(
            //     //leading: FlutterLogo(size: 26.0),
            //     title: Text('Manage Container \n ',
            //         style: TextStyle(
            //           fontSize: 22,
            //           color: Colors.blue,
            //           fontWeight: FontWeight.bold,
            //         )),

            //     subtitle: ListBody(
            //       children: [
            //         Text("Show a list of  Running Container:\n",
            //             style: TextStyle(
            //                 fontSize: 16, fontWeight: FontWeight.w600)),
            //         Text("docker ps -a"),
            //         Text("Delete a running container:\n",
            //             style: TextStyle(
            //                 fontSize: 16, fontWeight: FontWeight.w600)),
            //         Text("docker rm -f CONTAINER"),
            //         Text("docker  rm -f httpd")
            //       ],
            //     ), //trailing: Icon(Icons.more_vert),
            //   ),
            // ),
            Card(
              color: Colors.blue[100],
              child: ListTile(
                //leading: FlutterLogo(size: 26.0),

                title: Text('Manage Images\n ',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    )),

                subtitle: ListBody(
                  children: [
                    Text("Download an image:\n",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text("docker pull IMAGE [-TAG]"),
                    Text(
                      "ex:-> docker pull httpd \n",
                    ),
                    Text("Upload an image to a repo:\n",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text("docker push IMAGE"),
                    Text(
                      "ex:-> docker push httpd \n",
                    ),
                    Text("Delete an image:\n",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text(" docker rmi IMAGE "),
                    Text(" docker rmi httpd "),
                    Text("Show a list of all images:\n",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text(" docker images "),
                    Text("Delete all unused images:\n",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text(" docker image prune -a"),
                    Text("Tag an image:\n",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text(" docker tag IMAGE NEWIMAGE"),
                    Text("ex:-> docker tag ubuntu ubuntu_3.0")
                  ],
                ), //trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                //leading: FlutterLogo(size: 26.0),
                title: Text('Info and Status \n ',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    )),

                subtitle: ListBody(
                  children: [
                    Text("Show the logs of container:\n",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text("docker logs CONTAINER"),
                    Text("docker logs httpd\n"),
                    Text("Show status of running container:\n",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text("docker stats\n"),
                    Text("Show installed docker version:\n",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text("docker version \n"),
                    Text("Show processes of container:\n",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text("docker top CONTAINER"),
                    Text("ex:->docker  top httpd\n"),
                  ],
                ), //trailing: Icon(Icons.more_vert),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Myterminal extends StatefulWidget {
  @override
  _MyterminalState createState() => _MyterminalState();
}

class _MyterminalState extends State<Myterminal> {
  var cmd;
  var webdata;

  myweb(cmd) async {
    var url = "http://13.235.115.3/cgi-bin/web.py?x=${cmd}";
    var r = await http.get(url);

    setState(() {
      webdata = r.body;
      print(webdata);
    });
  }

/*
  var db = ["vimal", "jack", "krish", "linux"];
  var index = 0;
  lwclick() {
    setState(() {
      index += 1;
    });

    print('clicked ...');
    print("indexed changed");
    print(index)
  }
*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  FadeAnimation(
                      1,
                      Text(
                        "Linux Command Shell",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.blue[500],
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1.2,
                      Text(
                        "You can easily get your linux command output after typing the command in search box",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      )),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 300,
                padding: EdgeInsets.all(20),
                // color: Colors.white,
                child: ListView(
                  children: <Widget>[
                    Text(
                      webdata ?? ".",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      width: 5,
                      color: Colors.grey.shade500,
                    )),
              ),
              Container(
                height: 60,
                width: 260,
                child: ListView(
                  children: <Widget>[
                    TextField(
                      onChanged: (value) {
                        cmd = value;
                      },
                      autocorrect: true,
                      decoration: new InputDecoration(
                          hoverColor: Colors.grey,
                          focusColor: Colors.black38,
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.teal)),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.blue,
                          ),
                          hintText: "Type your Linux Command",
                          helperText:
                              "enter here linux and docker basic commands",
                          suffixStyle:
                              const TextStyle(backgroundColor: Colors.blue)),
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  FadeAnimation(
                      1.5,
                      MaterialButton(
                        minWidth: 200,
                        height: 60,
                        onPressed: () {
                          myweb(cmd);
                        },
                        color: Colors.blue[300],
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          "Click here",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      )),
                ],
              )
            ]),
      ),
    ));
  }
}

class dockercontiner extends StatefulWidget {
  @override
  _dockercontinerState createState() => _dockercontinerState();
}

class _dockercontinerState extends State<dockercontiner> {
  String vol,
      name,
      port,
      defaultport,
      image,
      version,
      networkname,
      mount,
      github;
  var webdata;
  web(vol, name, port, defaultport, image, version, networkname, mount,
      github) async {
    var url =
        "http://13.235.115.3/cgi-bin/docker_os/container.py?vol=${vol}&name=${name}&port=${port}&defaultport=${defaultport}&image=${image}&version=${version}&networkname=${networkname}&mount=${mount}&giturl=${github}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
      print(r.body);
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
                child: FadeAnimation(
                  2,
                  Card(
                    child: Image(
                      image: AssetImage("aa.jpeg"),
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
                    Card(
                      color: Colors.white,
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Github URL',
                        ),
                        onChanged: (val) {
                          //print(val);
                          github = val;
                        },
                      ),
                    ),
                    Container(
                        //color: Colors.blue,
                        margin: EdgeInsets.all(20),
                        //padding: EdgeInsets.all(10)

                        child: MaterialButton(
                          minWidth: 30,
                          height: 60,
                          onPressed: () {
                            web(vol, name, port, defaultport, image, version,
                                networkname, mount, github);
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
                        )),
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
                        child: ListView(
                          children: [
                            Text(
                              webdata ?? ".",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ))
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
