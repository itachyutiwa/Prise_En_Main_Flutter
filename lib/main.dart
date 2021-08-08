import 'package:flutter/material.dart';

import 'app_screens/basic_widgets.dart';
import 'app_screens/longListView.dart';

//Entry point of our app
void main() => runApp(new MyApp());



//--------------------------
//Static view or StatelessWidget class
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
          appBar: AppBar(
              title: Text('Training Lab'),
              shadowColor: Colors.green,
              elevation: 15.0,

          ),
          body: getListView(),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            debugPrint("Click d'ajout éffectué.");
          },
          child: Icon(Icons.add),
          tooltip: 'Nouvel utilisateur ajouté !',
        ),
      ),
    );
  }
}



//----------------------------------------
//Dynamic view or StatefulWidget class
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


//Function : Home page that implement dynamic view
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }


  //Our page design
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
