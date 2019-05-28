import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_app/widgets/edit_text.dart';
import 'package:state_management_app/widgets/response_display.dart';
import 'package:state_management_app/widgets/text_display.dart';

import 'app_state.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter State Management',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),

      home: ChangeNotifierProvider<AppState>(
        builder: (_)=>AppState(),
        child: MyHomePage(),
      )
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                TextDisplay(),
                EditText(),
                RaisedButton(
                  onPressed: () => appState.fetchData(),
                  child: Text("Get Datas"),
                ),
                ResponseDisplay()
              ],
            ),
          ),
        ),
      ),
    );

  }
}