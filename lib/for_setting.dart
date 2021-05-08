import 'package:flutter/material.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:dynamic_theme/theme_switcher_widgets.dart';

class for_setting extends StatelessWidget {
  bool darkthemeenable = false;
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(themedWidgetBuilder: (context, theme) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: darkthemeenable ? ThemeData.dark() : ThemeData.light(),
        //home: MyHomePage(darkthemeenable),
      );
    });
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final darkthemeenabled;
  // final String title;
  // MyHomePage(this.darkthemeenabled);
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: false,
      onChanged: (changeThemevalue) {},
    );

    // floatingActionButton: FloatingActionButton(
    //   onPressed: showChooser,
    //   child: const Icon(Icons.add),

    //bottomNavigationBar: BottomNavigationBar(
    // items: [
    //   BottomNavigationBarItem(
    //       icon: Icon(Icons.insert_drive_file), title: Text("Tab 1")),
    //   BottomNavigationBarItem(
    //       icon: Icon(Icons.show_chart), title: Text("Tab 2")),
    // ],
    //  ),
  }

  void showChooser() {
    showDialog<void>(
        context: context,
        builder: (context) {
          return BrightnessSwitcherDialog(
            onSelectedTheme: (brightness) {
              DynamicTheme.of(context).setBrightness(brightness);
            },
          );
        });
  }

  void changeBrightness() {
    DynamicTheme.of(context).setBrightness(
        Theme.of(context).brightness == Brightness.dark
            ? Brightness.light
            : Brightness.dark);
  }

  void changeColor() {
    DynamicTheme.of(context).setThemeData(ThemeData(
        primaryColor: Theme.of(context).primaryColor == Colors.indigo
            ? Colors.red
            : Colors.indigo));
  }
}
