import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tambah_activity.dart';

class Aktivitas extends StatelessWidget{
  @override

  @override
  Widget build(BuildContext context){
    
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home : Container(decoration:  BoxDecoration(
      image: DecorationImage(
        image:  AssetImage('images/gambar1.jpg'),
        fit: BoxFit.cover)
    ),
    child: 
    Scaffold(
      backgroundColor: Colors.transparent,
      body:  Column(
                children: [
              Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(top: 60),
                  child: Text('My Activity', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),

                Container(
                padding: EdgeInsets.only(top: 465),
                child: ElevatedButton(
                  child: Text('Tambah Aktivitas',style: TextStyle(fontSize: 20),),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> TambahActivity()));
                  }
                ),
              ),
            ]
          )       
        ),
      ),    
    ); 
  }
}