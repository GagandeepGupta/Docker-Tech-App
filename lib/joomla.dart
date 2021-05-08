import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

joomla() {
  String JOOMLA_DB_HOST,
      JOOMLA_DB_USER,
      JOOMLA_DB_PASSWORD,
      JOOMLA_DB_NAME,
      joomlavol,
      name,
      port,
      image,
      version;
  //String cmd;

  web(JOOMLA_DB_HOST, JOOMLA_DB_USER, JOOMLA_DB_PASSWORD, JOOMLA_DB_NAME,
      joomlavol, name, port, image, version) async {
    var url =
        "http://13.235.115.3/cgi-bin/joomla/joomla.py?joomlavol=${joomlavol}&JOOMLA_DB_HOST=${JOOMLA_DB_HOST}&JOOMLA_DB_USER=${JOOMLA_DB_USER}&JOOMLA_DB_PASSWORD=${JOOMLA_DB_PASSWORD}&JOOMLA_DB_NAME=${JOOMLA_DB_NAME}&name=${name}&port=${port}&image=${image}&version=${version}";
    var r = await http.get(url);
    print(r.body);
  }

  /*check(cmd) async {
    var url = "http://192.168.43.224/cgi-bin/check.py?cmd=${cmd}";
    var r = await http.get(url);
    print(r.body);
  }*/

  var Design = MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text('Personal Profile'),
        ),
        body: Center(
          child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.grey,
              margin: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 30,
                    color: Colors.amber,
                    alignment: Alignment.center,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'volume',
                      ),
                      onChanged: (val) {
                        //print(val);
                        joomlavol = val;
                      },
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 30,
                    color: Colors.amber,
                    alignment: Alignment.center,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'db host',
                      ),
                      onChanged: (val) {
                        //print(val);
                        JOOMLA_DB_HOST = val;
                      },
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 30,
                    color: Colors.amber,
                    alignment: Alignment.center,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'db user',
                      ),
                      onChanged: (val) {
                        //print(val);
                        JOOMLA_DB_USER = val;
                      },
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 30,
                    color: Colors.amber,
                    alignment: Alignment.center,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'db password',
                      ),
                      onChanged: (val) {
                        //print(val);
                        JOOMLA_DB_PASSWORD = val;
                      },
                    ),
                  ),
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
                        JOOMLA_DB_NAME = val;
                      },
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 30,
                    color: Colors.amber,
                    alignment: Alignment.center,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'port',
                      ),
                      onChanged: (val) {
                        //print(val);
                        port = val;
                      },
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 80,
                        height: 30,
                        color: Colors.amber,
                        alignment: Alignment.center,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'os name',
                          ),
                          onChanged: (val) {
                            //print(val);
                            name = val;
                          },
                        ),
                      ),
                      Container(
                        width: 120,
                        height: 30,
                        color: Colors.amber,
                        alignment: Alignment.center,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'os image',
                          ),
                          onChanged: (val) {
                            //print(val);
                            image = val;
                          },
                        ),
                      ),
                      Container(
                        width: 190,
                        height: 30,
                        color: Colors.amber,
                        alignment: Alignment.center,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter image version',
                          ),
                          onChanged: (val) {
                            //print(val);
                            version = val;
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 150,
                    height: 50,
                    color: Colors.orange,
                    margin: EdgeInsets.all(10),
                    //padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: FlatButton(
                        onPressed: () {
                          web(
                              JOOMLA_DB_HOST,
                              JOOMLA_DB_USER,
                              JOOMLA_DB_PASSWORD,
                              JOOMLA_DB_NAME,
                              joomlavol,
                              name,
                              port,
                              image,
                              version);
                        },
                        child: Text("Click Here!!")),
                  ),
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
                ],
              )),
        )),
    debugShowCheckedModeBanner: false,
  );

  return Design;
}
