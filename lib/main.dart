import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Show me yer pics!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchPic,
        child: Icon(
          Icons.add_circle
        ),
        ),
    ),
  );

  runApp(app);
}

void fetchPic() {
  print('what up doe');
}
