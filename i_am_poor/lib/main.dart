import 'package:flutter/material.dart';

void main() {

  runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.amberAccent,
          appBar: AppBar(
            backgroundColor: Colors.amber,
            title: Text('I am Poor'),
          ),
          body: Center(
            child:
              Image(
                image: AssetImage('images/icons8_dropbox_480px_material.png'),
              )
          ),
        ),
      ),
  );

}
