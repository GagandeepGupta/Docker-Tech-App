import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'animation/FadeAnimation.dart';
import 'home.dart';

class for_wordpress extends StatefulWidget {
  @override
  _for_wordpressState createState() => _for_wordpressState();
}

class _for_wordpressState extends State<for_wordpress> {
  String JOOMLA_DB_HOST,
      JOOMLA_DB_USER,
      JOOMLA_DB_PASSWORD,
      JOOMLA_DB_NAME,
      joomlavol,
      name,
      port,
      image,
      version;
  var webdata;
  web(JOOMLA_DB_HOST, JOOMLA_DB_USER, JOOMLA_DB_PASSWORD, JOOMLA_DB_NAME,
      joomlavol, name, port, image, version) async {
    var url =
        "http://13.235.115.3/cgi-bin/oneclick/wordpress.py?wordpressvol=${joomlavol}&WORDPRESS_DB_HOST=${JOOMLA_DB_HOST}&WORDPRESS_DB_USER=${JOOMLA_DB_USER}&WORDPRESS_DB_PASSWORD=${JOOMLA_DB_PASSWORD}&WORDPRESS_DB_NAME=${JOOMLA_DB_NAME}&name=${name}&port=${port}&image=${image}&version=${version}";
    var r = await http.get(url);
    print(r.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(title: Text("Wordpress")),
        body: Center(
          child: Container(
              width: double.infinity,
              height: double.infinity,
              //color: Colors.grey,
              decoration: BoxDecoration(
                color: Colors.white,
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
                          image: AssetImage("wordpress-logo.png"),
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
                              joomlavol = val;
                            },
                          ),
                        ),
                        Card(
                          color: Colors.white,
                          margin: EdgeInsets.all(10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'DB Host',
                            ),
                            onChanged: (val) {
                              //print(val);
                              JOOMLA_DB_HOST = val;
                            },
                          ),
                        ),
                        Card(
                          color: Colors.white,
                          margin: EdgeInsets.all(10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'DB user',
                            ),
                            onChanged: (val) {
                              //print(val);
                              JOOMLA_DB_USER = val;
                            },
                          ),
                        ),
                        Card(
                          color: Colors.white,
                          margin: EdgeInsets.all(10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'DB password',
                            ),
                            onChanged: (val) {
                              //print(val);
                              JOOMLA_DB_PASSWORD = val;
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
                              labelText: 'DB name',
                            ),
                            onChanged: (val) {
                              //print(val);
                              JOOMLA_DB_NAME = val;
                            },
                          ),
                        ),
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
                              labelText: 'Enter image version',
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
                              height: 60,
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
        ));
  }
}
