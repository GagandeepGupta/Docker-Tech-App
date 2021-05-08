import 'package:flutter/material.dart';
import 'package:test_docker1/for_cloud.dart';
import 'package:test_docker1/for_docker.dart';
import 'package:test_docker1/for_linux.dart';
import 'package:video_player/video_player.dart';
import 'home.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
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
      body: Column(
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Image.asset("first_gif.gif")),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                //_controller.play();
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          GridDashboard()
        ],
      ),
    );
  }
}

class GridDashboard extends StatelessWidget {
  List<Widget> y = [for_docker(), for_linux()];
  Items item1 = new Items(
    title: "Docker",
    subtitle: "March, Wednesday",
    event: "3 Events",
    img: "assets/docker.jpg",
    //x: [y[0]]);
  );
  Items item2 = new Items(
      title: "Docker_Docs",
      subtitle: "Bocali, Apple",
      event: "4 Items",
      img: "assets/docker_docs.png",
      clicke: "Click");
  Items item3 = new Items(
      title: "Docker Hub",
      subtitle: "Lucy Mao going to Office",
      event: "",
      img: "assets/docker_hub.jpg",
      clicke: "Click");
  Items item4 = new Items(
      title: "Linux",
      subtitle: "Rose favirited your Post",
      event: "",
      img: "assets/linux_img.png",
      clicke: "Click");
  Items item5 = new Items(
      title: "Wordpress",
      subtitle: "Homework, Design",
      event: "4 Items",
      img: "assets/wordpress_img2.jpg",
      clicke: "Click");
  Items item6 = new Items(
      title: "Settings",
      subtitle: "",
      event: "2 Items",
      img: "assets/setting2.jpg",
      clicke: "Click");

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xff5CA5D2;

    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 75,
                    child: Image.asset(
                      data.img,
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  // Text(
                  //   data.subtitle,
                  //   style: GoogleFonts.openSans(
                  //       textStyle: TextStyle(
                  //           color: Colors.white38,
                  //           fontSize: 10,
                  //           fontWeight: FontWeight.w600)),
                  // // ),
                  // SizedBox(
                  //   height: 14,
                  // ),
                  RaisedButton(
                      child: Text(data.clicke),
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => for_docker(),
                            ),
                          )),
                  // Text(
                  //   data.event,
                  //   style: GoogleFonts.openSans(
                  //       textStyle: TextStyle(
                  //           color: Colors.white70,
                  //           fontSize: 11,
                  //           fontWeight: FontWeight.w600)),
                  // ),
                ],
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  String clicke;
  //List<Widget> x;
  Items({this.title, this.subtitle, this.event, this.img, this.clicke});
}
