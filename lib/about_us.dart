import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class about_us extends StatefulWidget {
  @override
  _about_usState createState() => _about_usState();
}

class _about_usState extends State<about_us> {
  @override
  gagan_profile() {
    return Container(
      // margin: EdgeInsets.all(20),
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.blueAccent.shade100,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.blue,
                width: 3,
              ),
            ),
            margin: EdgeInsets.all(50),
            // padding: EdgeInsets.all(30),
            // padding: EdgeInsets.only(left: 70),
            alignment: Alignment.center,
            width: 350,
            height: 200,
            // color: Colors.amber,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Mr. Gagan Deep Gupta',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.link),
                  title: MaterialButton(
                    color: Colors.lightBlue,
                    child: Text(
                      "Profile View",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () => launch(
                        "https://linkedin.com/in/gagan-deep-gupta-4608b715b/"),
                  ),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: <Widget>[
                //     Icon(Icons.link),

                //     MaterialButton(
                //       height: 30,
                //       color: Colors.blue,
                //       onPressed: () => launch("https://google.com"),
                //     ),
                //     //   ),
                //   ],
                //),
              ],
            ),
          ),
          // GestureDetector(
          // onTap: myprint,
          //onDoubleTap: myprint,
          // child:
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://raw.githubusercontent.com/techcrew5/profilepicture/master/gagn.jpg'),
                fit: BoxFit.cover,
              ),
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.blue,
                width: 3,
              ),
            ),
            // margin: EdgeInsets.all(20),
            width: 100,
            height: 100,
            // color: Colors.blue,
            // child: Text('second'),
          ),
          // ),
        ],
      ),
    );
  }

  prateek_profile() {
    return Container(
      //margin: EdgeInsets.all(20),
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.blueAccent.shade100,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.blue,
                width: 3,
              ),
            ),
            margin: EdgeInsets.all(50),
            // padding: EdgeInsets.all(30),
            // padding: EdgeInsets.only(left: 70),
            alignment: Alignment.center,
            width: 350,
            height: 200,
            // color: Colors.amber,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Mr. Prateek Mishra',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.link),
                  title: MaterialButton(
                    color: Colors.lightBlue,
                    child: Text(
                      "Profile View",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () => launch(
                        "https://www.linkedin.com/in/prateek-mishra-pmis-394842196"),
                  ),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: <Widget>[
                //     Icon(Icons.link),

                //     MaterialButton(
                //       height: 30,
                //       color: Colors.blue,
                //       onPressed: () => launch("https://google.com"),
                //     ),
                //     //   ),
                //   ],
                //),
              ],
            ),
          ),
          // GestureDetector(
          // onTap: myprint,
          //onDoubleTap: myprint,
          // child:
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://raw.githubusercontent.com/techcrew5/profilepicture/master/pm67.jpg'),
                fit: BoxFit.cover,
              ),
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.blue,
                width: 3,
              ),
            ),
            // margin: EdgeInsets.all(20),
            width: 100,
            height: 100,
            // color: Colors.blue,
            // child: Text('second'),
          ),
          // ),
        ],
      ),
    );
  }

  ankit_profile() {
    return Container(
      // margin: EdgeInsets.all(20),
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.blueAccent.shade100,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.blue,
                width: 3,
              ),
            ),
            margin: EdgeInsets.all(50),
            // padding: EdgeInsets.all(30),
            // padding: EdgeInsets.only(left: 70),
            alignment: Alignment.center,
            width: 350,
            height: 200,
            // color: Colors.amber,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Mr. Ankit Kumar',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.link),
                  title: MaterialButton(
                    color: Colors.lightBlue,
                    child: Text(
                      "Profile View",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () => launch(
                        "https://www.linkedin.com/in/ankit-kumar-20668915a"),
                  ),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: <Widget>[
                //     Icon(Icons.link),

                //     MaterialButton(
                //       height: 30,
                //       color: Colors.blue,
                //       onPressed: () => launch("https://google.com"),
                //     ),
                //     //   ),
                //   ],
                //),
              ],
            ),
          ),
          // GestureDetector(
          // onTap: myprint,
          //onDoubleTap: myprint,
          // child:
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://raw.githubusercontent.com/techcrew5/profilepicture/master/ankit.jpg'),
                fit: BoxFit.cover,
              ),
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.blue,
                width: 3,
              ),
            ),
            // margin: EdgeInsets.all(20),
            width: 100,
            height: 100,
            // color: Colors.blue,
            // child: Text('second'),
          ),
          // ),
        ],
      ),
    );
  }

  sj_profile() {
    return Container(
      //margin: EdgeInsets.all(20),
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.blueAccent.shade100,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.blue,
                width: 3,
              ),
            ),
            margin: EdgeInsets.all(50),
            // padding: EdgeInsets.all(30),
            // padding: EdgeInsets.only(left: 70),
            alignment: Alignment.center,
            width: 350,
            height: 200,
            // color: Colors.amber,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Mrs. Samridhi Jain',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.link),
                  title: MaterialButton(
                    color: Colors.lightBlue,
                    child: Text(
                      "Profile View",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () => launch(
                        "https://www.linkedin.com/in/samridhi-jain-119683160"),
                  ),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: <Widget>[
                //     Icon(Icons.link),

                //     MaterialButton(
                //       height: 30,
                //       color: Colors.blue,
                //       onPressed: () => launch("https://google.com"),
                //     ),
                //     //   ),
                //   ],
                //),
              ],
            ),
          ),
          // GestureDetector(
          // onTap: myprint,
          //onDoubleTap: myprint,
          // child:
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://raw.githubusercontent.com/techcrew5/profilepicture/master/samridhi.jpeg'),
                fit: BoxFit.cover,
              ),
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.blue,
                width: 3,
              ),
            ),
            // margin: EdgeInsets.all(20),
            width: 100,
            height: 100,
            // color: Colors.blue,
            // child: Text('second'),
          ),
          // ),
        ],
      ),
    );
  }

  parkash_profile() {
    return Container(
      // margin: EdgeInsets.all(20),
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.blueAccent.shade100,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.blue,
                width: 3,
              ),
            ),
            margin: EdgeInsets.all(50),
            // padding: EdgeInsets.all(30),
            // padding: EdgeInsets.only(left: 70),
            alignment: Alignment.center,
            width: 350,
            height: 200,
            // color: Colors.amber,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Mr. Prakash Singh Rajpurohit',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.link),
                  title: MaterialButton(
                    color: Colors.lightBlue,
                    child: Text(
                      "Profile View",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () => launch(
                        "https://www.linkedin.com/in/prakash-singh-rajpurohit-616967178"),
                  ),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: <Widget>[
                //     Icon(Icons.link),

                //     MaterialButton(
                //       height: 30,
                //       color: Colors.blue,
                //       onPressed: () => launch("https://google.com"),
                //     ),
                //     //   ),
                //   ],
                //),
              ],
            ),
          ),
          // GestureDetector(
          // onTap: myprint,
          //onDoubleTap: myprint,
          // child:
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://raw.githubusercontent.com/techcrew5/profilepicture/master/prksh.jpeg'),
                fit: BoxFit.cover,
              ),
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.blue,
                width: 3,
              ),
            ),
            // margin: EdgeInsets.all(20),
            width: 100,
            height: 100,
            // color: Colors.blue,
            // child: Text('second'),
          ),
          // ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text(
            "About Us",
            style: TextStyle(
              fontSize: 23,
            ),
          ),
        ),
        body: Container(
            width: double.infinity,
            color: Colors.blue[100],
            //shadowColor: Colors.blue,
            child: ListView(
              children: [
                Card(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  color: Colors.blue[100],
                  child: Text('GAPPS',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 33,
                          fontWeight: FontWeight.bold)),
                ),
                Card(
                  margin: EdgeInsets.fromLTRB(55, 10, 55, 20),
                  color: Colors.black12,
                  shadowColor: Colors.blue,
                  child: Text('Front-End Developer\'s',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold)),
                ),
                gagan_profile(),
                prateek_profile(),
                Card(
                  margin: EdgeInsets.fromLTRB(55, 10, 55, 20),
                  color: Colors.black12,
                  shadowColor: Colors.blue,
                  child: Text('Back-End Developer\'s',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold)),
                ),
                sj_profile(),
                parkash_profile(),
                ankit_profile(),
              ],
            )

            //   Container(
            //     width: 20,
            //     child: Card(
            //         color: Colors.black12,
            //         shadowColor: Colors.blue,
            //         child: ListTile(
            //           title: Text('GAPPS',
            //               textAlign: TextAlign.center,
            //               style: TextStyle(
            //                   color: Colors.white,
            //                   fontSize: 23,
            //                   fontWeight: FontWeight.bold)),
            //         )),
            //   ),
            //   Card(
            //       color: Colors.black12,
            //       shadowColor: Colors.blue,
            //       child: ListTile(
            //         title: Text('Front-End Developer',
            //             textAlign: TextAlign.center,
            //             style: TextStyle(
            //                 color: Colors.white,
            //                 fontSize: 23,
            //                 fontWeight: FontWeight.bold)),
            //       )),
            // ],
            ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
