import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class for_dynamic extends StatefulWidget {
  @override
  _for_dynamicState createState() => _for_dynamicState();
}

class _for_dynamicState extends State<for_dynamic> {
  var webdata;
  var x;
  var image;
  var newimage;
  var directory;
  var file1;
  var name;
  var y;

  deletecontainer(x) async {
    var url =
        "http://13.235.115.3/cgi-bin/commands/textfiledbutton/deletecontainer.py?x=${x}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  stopcontainer(x) async {
    var url =
        "http://13.235.115.3/cgi-bin/commands/textfiledbutton/stopcontainer.py?x=${x}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  startcontainer(x) async {
    var url =
        "http://13.235.115.3/cgi-bin/commands/textfiledbutton/startcontainer.py?x=${x}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  pullimage(x) async {
    var url =
        "http://13.235.115.3/cgi-bin/commands/textfiledbutton/pullimage.py?x=${x}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  removeimage(x) async {
    var url =
        "http://13.235.115.3/cgi-bin/commands/textfiledbutton/removeimage.py?x=${x}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  tagimage(image, newimage) async {
    var url =
        "http://13.235.115.3/cgi-bin/commands/textfiledbutton/tagimage.py?image=${image}&newimage=${newimage}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  buildimage(image, directory) async {
    var url =
        "http://13.235.115.3/cgi-bin/commands/textfiledbutton/buildimage.py?image=${image}&directory=${directory}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  logsofcontainer(name) async {
    var url =
        "http://13.235.115.3/cgi-bin/commands/textfiledbutton/logsofcontainer.py?name=${name}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  processofcontainer(name) async {
    var url =
        "http://13.235.115.3/cgi-bin/commands/textfiledbutton/processofcontainer.py?name=${name}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  inspect(name) async {
    var url =
        "http://13.235.115.3/cgi-bin/commands/textfiledbutton/inspect.py?name=${name}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }

  /*renamecontainer(x, y) async {
    var url =
        "http://13.127.61.65/cgi-bin/commands/textfiledbutton/renamecontianer.py?=x${x}&y=${y}";
    var r = await http.get(url);
    setState(() {
      webdata = r.body;
    });
  }
*/
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
            ////////////////////////////////
            /////////////////////////Delete a container//////////////////////////
//docker rm -f container
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
                    Text("Delete a Container",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
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
                          x = value,
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          labelText: "Enter container name",
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
                          deletecontainer(x);
                        },
                        child: Text('Create')),
                  ],
                )),
////////////////////////Stop a running container//////////////////////
//docker stop container
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
                    Text("Stop running container",
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
                          x = value,
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          labelText: "Enter container name",
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
                          stopcontainer(x);
                        },
                        child: Text('Create')),
                  ],
                )),
//////////////////////////Start a stopped container//////////////////
//docker start container
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
                    Text("Start a stop container",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
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
                          x = value,
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          labelText: "Enter container name",
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
                          startcontainer(x);
                        },
                        child: Text('Create')),
                  ],
                )),
////////////////////Download an image////////////////////////////////////
//docker pull image:tag
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
                    Text("Download an image",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
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
                          x = value,
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          labelText: "Enter image name",
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
                          pullimage(x);
                        },
                        child: Text('Create')),
                  ],
                )),
///////////////////Delete an image////////////////////////////////////
//docker rmi image
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
                    Text("Delete an image",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
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
                          x = value,
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          labelText: "Enter image name",
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
                          removeimage(x);
                        },
                        child: Text('Create')),
                  ],
                )),
            //////////////////////Show the logs of container/////////////////////
//docker logs container
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
                    Text("Show logs ",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
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
                          name = value,
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          labelText: "Enter container name",
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
                          logsofcontainer(name);
                        },
                        child: Text('Create')),
                  ],
                )),
//////////////////////Tag an image////////////////////////////////////
//docker tag image newimage
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
                    Text("Tag Image",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )),
                    SizedBox(
                      height: 9,
                    ),
                    Container(
                      width: double.infinity,
                      height: 30,
                      child: TextField(
                        onChanged: (value) => {
                          image = value,
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          labelText: "Enter image name",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Container(
                      width: double.infinity,
                      height: 30,
                      child: TextField(
                        onChanged: (value) => {
                          newimage = value,
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          labelText: "Enter new image name",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    RaisedButton(
                        color: Colors.white,
                        splashColor: Colors.greenAccent,
                        shape: StadiumBorder(),
                        onPressed: () {
                          tagimage(image, newimage);
                        },
                        child: Text('Create')),
                  ],
                )),
//////////////////////////Build and tag an image from Dockerfile/////////////////
//docker build -t image directory
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
                    Text("Build Image",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )),
                    SizedBox(
                      height: 9,
                    ),
                    Container(
                      width: double.infinity,
                      height: 30,
                      child: TextField(
                        onChanged: (value) => {
                          image = value,
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          labelText: "Enter image name",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 9,
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
                      height: 8,
                    ),
                    RaisedButton(
                        color: Colors.white,
                        splashColor: Colors.greenAccent,
                        shape: StadiumBorder(),
                        onPressed: () {
                          buildimage(image, directory);
                        },
                        child: Text('Create')),
                  ],
                )),
/*//////////////////////////Save an image to tar file/////////////////////////
//docker save image > file
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
                    Text("Save image to tar file",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
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
                          image = value,
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          labelText: "Enter image name",
                        ),
                      ),
                    ),
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
                          saveimagetar(image, file1);
                        },
                        child: Text('Create')),
                  ],
                )),
///////////////////////Load an image from a tar file/////////////////////////
//docker load -i tarfile
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
                    Text("Load an image from a tar file",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
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
                          labelText: "Enter Tar file",
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
                          loadimagetar(directory);
                        },
                        child: Text('Create')),
                  ],
                )),*/

//////////////////////Show processes of container//////////////////
//docker top container
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
                    Text("Show processes of container",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
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
                          name = value,
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          labelText: "Enter container name",
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
                          processofcontainer(name);
                        },
                        child: Text('Create')),
                  ],
                )),
//////////////Get detail about an object////////////////////
//docker inspect name
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
                    Text("Get detail about an object",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
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
                          name = value,
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          labelText: "Enter object name",
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
                          inspect(name);
                        },
                        child: Text('Create')),
                  ],
                )),
/*///////////////////////////////Rename container//////////////////////////////////
//docker rename containername newname
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
                    Text("Rename container",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
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
                          x = value,
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          labelText: "Enter container name",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: 30,
                      child: TextField(
                        onChanged: (value) => {
                          y = value,
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          labelText: "Enter new name",
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
                          renamecontainer(x, y);
                        },
                        child: Text('Create')),
                  ],
                )),*/
/////////////////////////////////////				///////////////////////////////////////////////////
            ///////////////////////
          ]))
    ]));
  }
}
