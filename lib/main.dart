import 'package:flutter/material.dart';

void main() => runApp(ScaffoldExample());

class ScaffoldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    const String APP_TITLE = 'Flutter Scaffold Example';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: APP_TITLE,
      home: AppScaffold(appTitle: APP_TITLE),
    ); // MaterialApp()
  }
}

class AppScaffold extends StatefulWidget {
  AppScaffold({Key key, this.appTitle}) : super(key: key);

  final String appTitle;

  @override
  _AppScaffold createState() => _AppScaffold();
}

class _AppScaffold extends State<AppScaffold> {
  //
  int _num = 0;

  void tabBtmNavBar(int index) {
    setState(() {
      _num = (index == 0) ? _num + 1 : _num - 1;
    });
  }

  void pressFloatActBtn() {
    setState(() => _num++);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appTitle),
        centerTitle: true,
      ), // AppBar()
      body: Text('$num'),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Add',
            icon: Icon(Icons.arrow_upward),
          ), // BottomNavigationBarItem()
          BottomNavigationBarItem(
            label: 'Minus',
            icon: Icon(Icons.arrow_downward),
          ), // BottomNavigationBarItem()
        ], // <BottomNavigationBarItem>[]
        onTap: tabBtmNavBar,
      ), // BottomNavigationBar()
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: pressFloatActBtn,
      ), // FloatingActionButton()
      drawer: Drawer(
        child: Text(widget.appTitle),
      ), // Drawer()
    ); // Scaffold()
  }
}
