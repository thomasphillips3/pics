import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Show me yer pics!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: saySumn
              ),
            ),
          );
        
          runApp(app);
        }
        
        void saySumn() {
          print('what up doe');
}
