import 'package:flutter/material.dart';

void main() => runApp(NavaApp());

class NavaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: EsScaffold(title: 'Flutter en Español Derek'),
    ); // fin de material
  } // fin de widget
} // fin de NavaApp

class EsScaffold extends StatefulWidget {
  EsScaffold({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _EsScaffoldState createState() => _EsScaffoldState();
} // fin de EsScaffold

class _EsScaffoldState extends State<EsScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      //backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          'assets/FlutterEnEspanol.jpg',
          width: 200.0,
        ),
      ), //fin de center
      drawer: Drawer(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FlutterLogo(size: 100.0),
          Text('Drawer 1 Derek'),
        ]), //Fin de columna
      ), //Fin drawer 1
      endDrawer: Drawer(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FlutterLogo(size: 100.0),
          Text('Drawer 2 Derek end'),
        ]), //Fin de columna
      ), //Fin endDrawer 2
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 200.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlutterLogo(size: 100.0),
                    Text('Bottom sheet Derek'),
                  ],
                ),
              ); //Fin Container
            }, //Fin builder
          ); //Fin Sheet
        }, //Fin de onPressed
      ), //Fin floatingActionButton
      bottomNavigationBar: BottomAppBar(
        color: Colors.greenAccent,
        child: Container(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlutterLogo(
                size: 30.0,
              ),
              Text('BNB con BottomAppBar Derek')
            ], // Fin <Widget>
          ), //Fin Row
        ), //Fin Container
      ), //Fin bottom aPPBar
    ); // fin de Saffold
  } //fin de widget construir
} // fin de state<EsScaffold>
