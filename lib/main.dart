import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:testing_decorate_routes/app_module.dart';

void main() => runApp(ModularApp(module: AppModule()));

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamic routing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Dynamic routing example'),
      initialRoute: "/",
      navigatorKey: Modular.navigatorKey,
      onGenerateRoute: Modular.generateRoute,
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _id1, _id2, _id3, _id4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Container(
        width: 500,
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              onSaved: (String value) async {
                _id1 = value;
              },
              onChanged: (String value) async {
                _id1 = value;
              },
            ),
            TextFormField(
              onSaved: (String value) async {
                _id2 = value;
              },
              onChanged: (String value) async {
                _id2 = value;
              },
            ),
            TextFormField(
              onSaved: (String value) async {
                _id3 = value;
              },
              onChanged: (String value) async {
                _id3 = value;
              },
            ),
            TextFormField(
              onSaved: (String value) async {
                _id4 = value;
              },
              onChanged: (String value) async {
                _id4 = value;
              },
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: RawMaterialButton(
                padding: EdgeInsets.all(10),
                elevation: 4,
                fillColor: Colors.orange,
                child: Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.teal,
                ),
                shape: CircleBorder(),
                onPressed: () {
                  Modular.to.pushNamed('/product/$_id1/$_id2/$_id3/$_id4');
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
