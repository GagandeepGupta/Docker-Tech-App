import 'package:flutter/material.dart';

class for_help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text(
            'Help',
            style: TextStyle(color: Colors.white70),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.white70,
            ),
          ),
        ),
        body: Container(
          child: ListView(
            children: [
              ///////////////////////////////// landing Page /////////////////////////////
              Card(
                  color: Colors.black87,
                  shadowColor: Colors.blue,
                  child: ListTile(
                    title: Text('Landing Page',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                  )),

              Container(
                width: double.infinity,
                height: 200,
                child: Card(
                  borderOnForeground: true,
                  shadowColor: Colors.blue,
                  child: Image.asset('landing_page.jpeg'),
                ),
                decoration: new BoxDecoration(boxShadow: [
                  new BoxShadow(
                    color: Colors.blue,
                    blurRadius: 20.0,
                  )
                ]),
              ),
              Container(
                width: double.infinity,
                height: 400,
                child: Card(
                  borderOnForeground: true,
                  shadowColor: Colors.blue,
                  child: Image.asset('landing_page1.1.png'),
                ),
                decoration: new BoxDecoration(boxShadow: [
                  new BoxShadow(
                    color: Colors.blue,
                    blurRadius: 20.0,
                  )
                ]),
              ),

              ///////////////////////////////// Home Page /////////////////////////////
              Card(
                  color: Colors.black87,
                  shadowColor: Colors.blue,
                  child: ListTile(
                    title: Text('Home Page',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                  )),

              Container(
                width: double.infinity,
                height: 300,
                child: Card(
                  borderOnForeground: true,
                  shadowColor: Colors.blue,
                  child: Image.asset('home_page1.jpeg'),
                ),
                decoration: new BoxDecoration(boxShadow: [
                  new BoxShadow(
                    color: Colors.blue,
                    blurRadius: 20.0,
                  )
                ]),
              ),
              Container(
                width: double.infinity,
                height: 400,
                child: Card(
                  borderOnForeground: true,
                  shadowColor: Colors.blue,
                  child: Image.asset('home_page.PNG'),
                ),
                decoration: new BoxDecoration(boxShadow: [
                  new BoxShadow(
                    color: Colors.blue,
                    blurRadius: 20.0,
                  )
                ]),
              ),

              ///////////////////////////////// Menu Icon /////////////////////////////
              Card(
                  color: Colors.black87,
                  shadowColor: Colors.blue,
                  child: ListTile(
                    title: Text('Menu Bar',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                  )),

              Container(
                width: double.infinity,
                height: 300,
                child: Card(
                  borderOnForeground: true,
                  shadowColor: Colors.blue,
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Image.asset('Menu_icon.PNG'),
                        SizedBox(
                          height: 50,
                        ),
                        Image.asset('Menu_icon1.PNG'),
                      ],
                    ),
                  ),
                ),
                decoration: new BoxDecoration(boxShadow: [
                  new BoxShadow(
                    color: Colors.blue,
                    blurRadius: 20.0,
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
