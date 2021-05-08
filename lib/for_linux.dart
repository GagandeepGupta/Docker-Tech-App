import 'package:flutter/material.dart';
import 'home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'animation/FadeAnimation.dart';
import 'package:google_fonts/google_fonts.dart';

var webdata;

class for_linux extends StatelessWidget {
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
                    icon: Icon(Icons.search),
                    child: Center(
                      child: Text("Static button"),
                    )),
                Tab(
                    icon: Icon(Icons.search),
                    child: Center(
                      child: Text("Dynamic button"),
                    )),
                Tab(
                  icon: Icon(Icons.code),
                  child: Center(
                      child: Text(
                    "Cheat Code",
                  )),
                )
              ],
            ),
            title: Text('Linux'),
          ),
          body: TabBarView(
            children: [
              Myterminal(),
              LStatic(),
              LDynamic(),
              Cheatcode(),
            ],
          ),
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
    });

    // print(webdata);
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

class LDynamic extends StatefulWidget {
  @override
  _LDynamicState createState() => _LDynamicState();
}

var directory, file1, file2, package, hostip;

class _LDynamicState extends State<LDynamic> {
  mkdir(directory) async {
    var url =
        "http://13.235.115.3/cgi-bin/linuxcmd/textfield1/mkdir.py?directory=${directory}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  rmdirectory(directory) async {
    var url =
        "http://13.235.115.3/cgi-bin/linuxcmd/textfield1/rmdirectory.py?directory=${directory}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  rmfile(file1) async {
    var url =
        "http://13.235.115.3/cgi-bin/linuxcmd/textfield1/rmfile.py?file1=${file1}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  copyfile(file1, file2) async {
    var url =
        "http://13.235.115.3/cgi-bin/linuxcmd/textfield1/copyfile.py?file1=${file1}&file2=${file2}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  movefile(file1, file2) async {
    var url =
        "http://13.235.115.3/cgi-bin/linuxcmd/textfield1/movefile.py?file1=${file1}&file2=${file2}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  touchfile(file1) async {
    var url =
        "http://13.235.115.3/cgi-bin/linuxcmd/textfield1/touchfile.py?file1=${file1}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  catfile(file1) async {
    var url =
        "http://13.235.115.3/cgi-bin/linuxcmd/textfield1/catfile.py?file1=${file1}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  headfile(file1) async {
    var url =
        "http://13.235.115.3/cgi-bin/linuxcmd/textfield1/headfile.py?file1=${file1}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  tailfile(file1) async {
    var url =
        "http://13.235.115.3/cgi-bin/linuxcmd/textfield1/tailfile.py?file1=${file1}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  tailf(file1) async {
    var url =
        "http://13.235.115.3/cgi-bin/linuxcmd/textfield1/tail-f.py?file1=${file1}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  yuminfo(package) async {
    var url =
        "http://13.235.115.3/cgi-bin/linuxcmd/textfield1/yuminfo.py?package=${package}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  yuminstall(package) async {
    var url =
        "http://13.235.115.3/cgi-bin/linuxcmd/textfield1/yuminstall.py?package=${package}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  yumremove(package) async {
    var url =
        "http://13.235.115.3/cgi-bin/linuxcmd/textfield1/yumremove.py?package=${package}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  ssh(hostip) async {
    var url =
        "http://13.235.115.3/cgi-bin/linuxcmd/textfield1/ssh.py?hostip=${hostip}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  wget(file1) async {
    var url =
        "http://13.235.115.3/cgi-bin/linuxcmd/textfield1/wget.py?file1=${file1}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  //var webdata;
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

////////////////////////Create a directory//////////////////////
//mkdir directory
              Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text("Create a directory",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 30,
                        child: TextField(
                          onChanged: (value) => {
                            directory = value,
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            labelText: "Enter directory name",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          splashColor: Colors.greenAccent,
                          shape: StadiumBorder(),
                          onPressed: () {
                            mkdir(directory);
                          },
                          child: Text('Create')),
                    ],
                  )), ////////////////////////Forcefully remove directory recursively//////////////////////
//rm -rf directory
              Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text("Forcefully remove directory recursively",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 30,
                        child: TextField(
                          onChanged: (value) => {
                            directory = value,
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            labelText: "Enter directory name",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          splashColor: Colors.greenAccent,
                          shape: StadiumBorder(),
                          onPressed: () {
                            rmdirectory(directory);
                          },
                          child: Text('Create')),
                    ],
                  )),
//////////////////////// Force removal of file without prompting for confirmation//////////////////////
//rm -f file
              Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          " Force removal of file without prompting for confirmation",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 30,
                        child: TextField(
                          onChanged: (value) => {
                            file1 = value,
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            labelText: "Enter file name",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          splashColor: Colors.greenAccent,
                          shape: StadiumBorder(),
                          onPressed: () {
                            rmfile(file1);
                          },
                          child: Text('Create')),
                    ],
                  )),
////////////////////////Copy file1 to file2///////////////////////////////
//cp file1 file2
              Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 9,
                      ),
                      Text("Copy file1 to file2",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: double.infinity,
                        height: 30,
                        child: TextField(
                          onChanged: (value) => {
                            file1 = value,
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            labelText: "Enter file1 name",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: double.infinity,
                        height: 30,
                        child: TextField(
                          onChanged: (value) => {
                            file2 = value,
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            labelText: "Enter file2 name",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          splashColor: Colors.greenAccent,
                          shape: StadiumBorder(),
                          onPressed: () {
                            copyfile(file1, file2);
                          },
                          child: Text('Create')),
                    ],
                  )),
////////////////////////Rename or move file1 to file2. If file2 is an existing directory, move file1 into directory file2///////////////////////////////
//mv file1 file2
              Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                          "Rename/Move file1 to file2. If file2 exist, move file1 into file2",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        width: double.infinity,
                        height: 28,
                        child: TextField(
                          onChanged: (value) => {
                            file1 = value,
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            labelText: "Enter file1 name",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        width: double.infinity,
                        height: 25,
                        child: TextField(
                          onChanged: (value) => {
                            file2 = value,
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            labelText: "Enter file2 name",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          splashColor: Colors.greenAccent,
                          shape: StadiumBorder(),
                          onPressed: () {
                            movefile(file1, file2);
                          },
                          child: Text('Create')),
                    ],
                  )),
//////////////////////// Create an empty file or update the access and modification times of file//////////////////////
//touch file
              Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          " Create an empty file or update the access and modification times of file",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 30,
                        child: TextField(
                          onChanged: (value) => {
                            file1 = value,
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            labelText: "Enter file name",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          splashColor: Colors.greenAccent,
                          shape: StadiumBorder(),
                          onPressed: () {
                            touchfile(file1);
                          },
                          child: Text('Create')),
                    ],
                  )),
              //////////////////////// Create an empty file or update the access and modification times of file//////////////////////
//touch file
              Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          " Create an empty file or update the access and modification times of file",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 30,
                        child: TextField(
                          onChanged: (value) => {
                            file1 = value,
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            labelText: "Enter file name",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          splashColor: Colors.greenAccent,
                          shape: StadiumBorder(),
                          onPressed: () {
                            touchfile(file1);
                          },
                          child: Text('Create')),
                    ],
                  )), //////////////////////// Create an empty file or update the access and modification times of file//////////////////////
//touch file
              Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          " Create an empty file or update the access and modification times of file",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 30,
                        child: TextField(
                          onChanged: (value) => {
                            file1 = value,
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            labelText: "Enter file name",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          splashColor: Colors.greenAccent,
                          shape: StadiumBorder(),
                          onPressed: () {
                            touchfile(file1);
                          },
                          child: Text('Create')),
                    ],
                  )), //////////////////////// View the contents of file//////////////////////
//cat file
              Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(" View the contents of file",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 30,
                        child: TextField(
                          onChanged: (value) => {
                            file1 = value,
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            labelText: "Enter file name",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          splashColor: Colors.greenAccent,
                          shape: StadiumBorder(),
                          onPressed: () {
                            catfile(file1);
                          },
                          child: Text('Create')),
                    ],
                  )),
//////////////////////// Display the first 10 lines of file//////////////////////
//head file
              Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(" Display the first 10 lines of file",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 30,
                        child: TextField(
                          onChanged: (value) => {
                            file1 = value,
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            labelText: "Enter file name",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          splashColor: Colors.greenAccent,
                          shape: StadiumBorder(),
                          onPressed: () {
                            headfile(file1);
                          },
                          child: Text('Create')),
                    ],
                  )),
//////////////////////// Display the last 10 lines of file//////////////////////
//tail file
              Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(" Display the last 10 lines of file",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 30,
                        child: TextField(
                          onChanged: (value) => {
                            file1 = value,
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            labelText: "Enter file name",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          splashColor: Colors.greenAccent,
                          shape: StadiumBorder(),
                          onPressed: () {
                            tailfile(file1);
                          },
                          child: Text('Create')),
                    ],
                  )),
////////////////////////  Display description and summary information about package//////////////////////
//yum info package
              Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          " Display description and summary information about package",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 30,
                        child: TextField(
                          onChanged: (value) => {
                            package = value,
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            labelText: "Enter package name",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          splashColor: Colors.greenAccent,
                          shape: StadiumBorder(),
                          onPressed: () {
                            yuminfo(package);
                          },
                          child: Text('Create')),
                    ],
                  )),
////////////////////////  Install package//////////////////////
//yum istall package
              Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(" Install package",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 30,
                        child: TextField(
                          onChanged: (value) => {
                            package = value,
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            labelText: "Enter package name",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          splashColor: Colors.greenAccent,
                          shape: StadiumBorder(),
                          onPressed: () {
                            yuminstall(package);
                          },
                          child: Text('Create')),
                    ],
                  )),
////////////////////////  Remove/uninstall package//////////////////////
//yum remove package
              Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(" Remove/uninstall package",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 30,
                        child: TextField(
                          onChanged: (value) => {
                            package = value,
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            labelText: "Enter package name",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          splashColor: Colors.greenAccent,
                          shape: StadiumBorder(),
                          onPressed: () {
                            yumremove(package);
                          },
                          child: Text('Create')),
                    ],
                  )),
////////////////////////  Connect to host as your local username//////////////////////
//ssh host
              Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(" Connect to host as your local username",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 30,
                        child: TextField(
                          onChanged: (value) => {
                            hostip = value,
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            labelText: "Enter host IP",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          splashColor: Colors.greenAccent,
                          shape: StadiumBorder(),
                          onPressed: () {
                            ssh(hostip);
                          },
                          child: Text('Create')),
                    ],
                  )),
//////////////////////// Download http://domain.com/file//////////////////////
//wget http://domain.com/file
              Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(" Download http://domain.com/file",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 30,
                        child: TextField(
                          onChanged: (value) => {
                            file1 = value,
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            labelText: "Enter file name",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          splashColor: Colors.greenAccent,
                          shape: StadiumBorder(),
                          onPressed: () {
                            wget(file1);
                          },
                          child: Text('Create')),
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
                title: Text('User Information and Management \n ',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    )),

                subtitle: ListBody(
                  children: [
                    Text("Id:",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text(
                        "Display the user and group ids of your current user.\n"),
                    Text("Last:",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text(
                      "Display the last users who have logged onto the system.",
                    ),
                    Text("\nwho:",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text("Show who is logged into the system. "),
                    Text("\nw:",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text("Show who is logged in and what they are doing"),
                    Text("\nuseradd -c \"xyz\" -m yy:",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text(
                        "Create an account named yy,with a comment of \"xyz\" and create the user\'s home directory\n"),
                  ],
                ), //trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                //leading: FlutterLogo(size: 26.0),
                title: Text('Performance Monitoring and Statistics ',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    )),

                subtitle: ListBody(
                  children: [
                    Text("\ntop:",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text("Display and manage the top prcesses"),
                    Text("\nls:",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text("List all open files on system"),
                    Text("\nfree -m:",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text("Display free and used memory\n"),
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

                title: Text('Installing Packages\n ',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    )),

                subtitle: ListBody(
                  children: [
                    Text("yum install package:",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text("Install package "),
                    Text("\nyum info package:",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text(
                        "Display description and summary information about packages."),
                    Text("\nyum remove package:",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text(" Remove/uninstall package \n"),
                  ],
                ), //trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                //leading: FlutterLogo(size: 26.0),
                title: Text('Disc Usage\n ',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    )),

                subtitle: ListBody(
                  children: [
                    Text("\ndf -h:",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text("Show free and used space on mounted filesystems\n"),
                    Text("\nfdisk -l:",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text("Display disks partitions sizes and types\n"),
                    Text("\ndu -sh:",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text(
                        "Display total disk usage off the current directory\n"),
                  ],
                ), //trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              color: Colors.blue[100],
              child: ListTile(
                //leading: FlutterLogo(size: 26.0),
                title: Text('Process and SSH\n ',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    )),

                subtitle: ListBody(
                  children: [
                    Text("\nssh host:",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text("Connect to host as your local username."),
                    Text("\nps:",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    Text("Display your currently running processes\n"),
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

/*class LStatic extends StatefulWidget {
  @override
  _LStaticState createState() => _LStaticState();
}

class _LStaticState extends State<LStatic> {
  var webdata;
  @override
  Widget build(BuildContext context) {
    web_ps() async {
      var url = "http://13.127.61.65/cgi-bin/commands/dockerps.py";
      var r = await http.get(url);
      setState(() {
        webdata = r.body;
      });
    }

    web_ps_a() async {
      var url = "http://13.127.61.65/cgi-bin/commands/dockerpsa.py";
      var r = await http.get(url);
      setState(() {
        webdata = r.body;
        print(r.statusCode);
      });
    }

    @override
    Widget build(BuildContext context) {
      return Container(child: Text("hey l static"));
    }
  }
}*/

class LStatic extends StatefulWidget {
  @override
  _LStaticState createState() => _LStaticState();
}

class _LStaticState extends State<LStatic> {
  unamea() async {
    var url = "http://13.235.115.3/cgi-bin/linuxcmd/uname-a.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  unamer() async {
    var url = "http://13.235.115.3/cgi-bin/linuxcmd/uname-r.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  redhatversion() async {
    var url = "http://13.235.115.3/cgi-bin/linuxcmd/redhatversion.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  uptime() async {
    var url = "http://13.235.115.3/cgi-bin/linuxcmd/uptime.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  hostname() async {
    var url = "http://13.235.115.3/cgi-bin/linuxcmd/hostname.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  hostnameI() async {
    var url = "http://13.235.115.3/cgi-bin/linuxcmd/hostname-I.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  lastreboot() async {
    var url = "http://13.235.115.3/cgi-bin/linuxcmd/lastreboot.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  date() async {
    var url = "http://13.235.115.3/cgi-bin/linuxcmd/date.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  cal() async {
    var url = "http://13.235.115.3/cgi-bin/linuxcmd/cal.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  whoisonline() async {
    var url = "http://13.235.115.3/cgi-bin/linuxcmd/whoisonline.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  whoami() async {
    var url = "http://13.235.115.3/cgi-bin/linuxcmd/whoami.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  lsal() async {
    var url = "http://13.235.115.3/cgi-bin/linuxcmd/ls-al.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  pwd() async {
    var url = "http://13.235.115.3/cgi-bin/linuxcmd/pwd.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  ifconfig() async {
    var url = "http://13.235.115.3/cgi-bin/linuxcmd/ifconfig.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  hostnamei() async {
    var url = "http://13.235.115.3/cgi-bin/linuxcmd/hostname-i.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  netstat() async {
    var url = "http://13.235.115.3/cgi-bin/linuxcmd/netstat.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  top() async {
    var url = "http://13.235.115.3/cgi-bin/linuxcmd/top.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  id() async {
    var url = "http://13.235.115.3/cgi-bin/linuxcmd/id.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  last() async {
    var url = "http://13.235.115.3/cgi-bin/linuxcmd/last.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  ps() async {
    var url = "http://13.235.115.3/cgi-bin/linuxcmd/ps.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  ls() async {
    var url = "http://13.235.115.3/cgi-bin/linuxcmd/ls.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  df() async {
    var url = "http://13.235.115.3/cgi-bin/linuxcmd/df.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  du() async {
    var url = "http://13.235.115.3/cgi-bin/linuxcmd/du.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  fdisk() async {
    var url = "http://13.235.115.3/cgi-bin/linuxcmd/fdisk.py";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

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

//////////////////Display linux system information//////////////////////////////////
//uname -a
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
                      Text("Display linux system information",
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
                            unamea();
                          },
                          child: Text('Click')),
                    ],
                  )),
//////////////////////Display kernel release information/////////////////////////////////
//uname -r
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
                      Text("Display kernel release information",
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
                            unamer();
                          },
                          child: Text('Click')),
                    ],
                  )),
///////////////////////Show which version of redhat installed//////////////////////////
//cat /etc/redhat-release
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
                      Text("Show which version of redhat installed",
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
                            redhatversion();
                          },
                          child: Text('Click')),
                    ],
                  )),
////////////////////Show how long the system has been running//////////////////
//uptime
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
                      Text("Show how long the system has been running",
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
                            uptime();
                          },
                          child: Text('Click')),
                    ],
                  )),
////////////////////Show system host name///////////////////////////
//hostname
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
                      Text("Show system host name",
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
                            hostname();
                          },
                          child: Text('Click')),
                    ],
                  )),
////////////////////////Display the IP addresses of the host///////////////////////////
//hostanem -I
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
                      Text("Display the IP addresses of the host",
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
                            hostnameI();
                          },
                          child: Text('Click')),
                    ],
                  )),
//////////////////////Show system reboot history////////////////////
//last reboot
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
                      Text("Show system reboot history",
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
                            lastreboot();
                          },
                          child: Text('Click')),
                    ],
                  )),
///////////////////////Show the current date and time///////////////
//date
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
                      Text("Show the current date and time",
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
                            date();
                          },
                          child: Text('Click')),
                    ],
                  )),
              ///////////////////////Show this month's calendar///////////////
//cal
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
                      Text("Show this month's calendar",
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
                            cal();
                          },
                          child: Text('Click')),
                    ],
                  )),
///////////////////////Display who is online///////////////
//w
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
                      Text("Display who is online",
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
                            whoisonline();
                          },
                          child: Text('Click')),
                    ],
                  )),

///////////////////////Who you are logged in as///////////////
//whoami
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
                      Text("Who you are logged in as",
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
                            whoami();
                          },
                          child: Text('Click')),
                    ],
                  )),
///////////////////////List all files in a long listing///////////////
//ls -al
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
                      Text("List all files in a long listing",
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
                            lsal();
                          },
                          child: Text('Click')),
                    ],
                  )),
///////////////////////Display the present working directory///////////////
//pwd
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
                      Text("Display the present working directory",
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
                            pwd();
                          },
                          child: Text('Click')),
                    ],
                  )),
///////////////////////Display all network interfaces and ip address///////////////
//ifconfig
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
                      Text("Display all network interfaces and ip address",
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
                            ifconfig();
                          },
                          child: Text('Click')),
                    ],
                  )),
///////////////////////Display the network address of the hostname///////////////
//hostname -i
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
                      Text("Display the network address of the hostname",
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
                            hostnamei();
                          },
                          child: Text('Click')),
                    ],
                  )),
///////////////////////Display listening tcp and udp ports and corresponding programs///////////////
//netstat -nutlp
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
                      Text(
                          "Display listening tcp and udp ports and corresponding programs",
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
                            netstat();
                          },
                          child: Text('Click')),
                    ],
                  )),
///////////////////////Display and manage the top processes///////////////
//top
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
                      Text("Display and manage the top processes",
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
                            top();
                          },
                          child: Text('Click')),
                    ],
                  )),
/////////////////////// Display the user and group ids of your current user///////////////
//id
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
                      Text(
                          "Display the user and group ids of your current user",
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
                            id();
                          },
                          child: Text('Click')),
                    ],
                  )),
///////////////////////Display the last users who have logged onto the system///////////////
//last
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
                      Text(
                          "Display the last users who have logged onto the system",
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
                            last();
                          },
                          child: Text('Click')),
                    ],
                  )),
///////////////////////Display your currently running processes///////////////
//ps
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
                      Text("Display your currently running processes",
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
                            ps();
                          },
                          child: Text('Click')),
                    ],
                  )),
///////////////////////List all files///////////////
//ls
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
                      Text("List all files",
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
                            ls();
                          },
                          child: Text('Click')),
                    ],
                  )),

/////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////// Show free and used space on mounted filesystems///////////////
//df -h
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
                      Text(" Show free and used space on mounted filesystems",
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
                            df();
                          },
                          child: Text('Click')),
                    ],
                  )),
////////////////////// Display total disk usage off the current directory///////////////
//du -sh
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
                      Text(
                          " Display total disk usage off the current directory",
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
                            du();
                          },
                          child: Text('Click')),
                    ],
                  )),
////////////////////// Display disks partitions sizes and types///////////////
//fdisk -l
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
                      Text(" Display disks partitions sizes and types",
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
                            fdisk();
                          },
                          child: Text('Click')),
                    ],
                  )),
              //////////////////////////////-----------------------/////////////////////
            ],
          ),
        )
      ]),
    );
  }
}
