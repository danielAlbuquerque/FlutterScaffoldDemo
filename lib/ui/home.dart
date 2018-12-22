import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text("hello world"),
        
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.send), onPressed: () => debugPrint("Icon tapped!")),
          new IconButton(icon: new Icon(Icons.search), onPressed: _onPress)
        ],
      ),

      // Other properties
      backgroundColor: Colors.grey.shade100,

      // Body
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Bonni",
              style: new TextStyle(
                fontSize: 20.5,
                fontWeight: FontWeight.w900,
                color: Colors.deepOrange,
              ),
            ),

            new InkWell(
              child: new Text("Button"),

              onTap: () => debugPrint("Button tapped"),
            ),

          ],
        )
      ),

      floatingActionButton: new FloatingActionButton(
        onPressed: () => debugPrint("Pressed"),
        backgroundColor: Colors.lightGreen,
        tooltip: 'Going up!',
        child: new Icon(Icons.call_missed),),
    
      bottomNavigationBar: new BottomNavigationBar(items: [
        new BottomNavigationBarItem(icon: new Icon(Icons.add), title: new Text("Hey")),
        new BottomNavigationBarItem(icon: new Icon(Icons.print), title: new Text("Hey 2")),
        new BottomNavigationBarItem(icon: new Icon(Icons.call_missed), title: new Text("Hey 3"))

      ], onTap: (int i) => debugPrint("Hey touched $i")),

    );
  }

  void _onPress() {
    print("Search tapped!");
  }
}