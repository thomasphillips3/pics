import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import '../src/models/image_model.dart';
import 'dart:convert';
import 'widgets/image_list.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
  // const AppState({ Key key }) : super(key: key);
  // AppState createState() => AppState(); 
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images),
        appBar: AppBar(
          title: Text('Show me yer pics!'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchPic,
          child: Icon(Icons.add_circle),
        ),
      ),
    );
  }
  
  void fetchPic() async {
    counter ++;
    final response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
    final imageModel = ImageModel.fromJson(json.decode(response.body));
    setState((){
      images.add(imageModel);
    });
  }
}

