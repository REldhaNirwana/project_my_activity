import 'package:flutter/material.dart';
import 'aktivitas_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Activity',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Aktivitas()
        );
                      
      

  }
}
