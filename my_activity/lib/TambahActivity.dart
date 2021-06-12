
import 'package:flutter/material.dart';


class TambahActivity extends StatefulWidget {
  final state = ActivityState;
  @override
  ActivityState createState() => ActivityState();
}

class ActivityState extends State<TambahActivity>{
 var aktivitas = ['Olahraga', 'Mukbang' , 'Traveling',' Melukis', 'Memasak','Belajar' , 'Mengaji'];
 int index=1;

@override
Widget build(BuildContext context) {

  return Scaffold(
    appBar: 
      AppBar( title:  Text('Tambah Aktivitas', style: TextStyle(color: Colors.white)),),
              
    body: Container(
          
            padding: EdgeInsets.only(left: 15, right:10),
            
            child: ListView(
              children: [
                Image.asset('images/gambar2.jpg', height: 200,),
                Container(
                  child:Padding(
                    padding: EdgeInsets.only(bottom:5),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Aktivitas',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)
                        ),
                        ),
                        onChanged: (value){},
                    ),
                  ),
                ),

                  Padding(
                    padding: EdgeInsets.only(top: 15, bottom:5),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Hari',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)
                        ),
                        ),
                        onChanged: (value){},
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 15, bottom:5),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Waktu',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)
                        ),
                        ),
                        onChanged: (value){},
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 15, bottom:5),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Catatan',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)
                        ),
                        ),
                        onChanged: (value){},
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 15, bottom:5),
                    child: Listener(
                       onPointerDown: (PointerDownEvent event){
                          AlertDialog info = AlertDialog(
                              title : Text("info"),
                              content: Text('Aktivitas' +' ' + aktivitas[index % aktivitas.length] + ' ' + 'Sukses di Simpan'),
                              actions:[
                                FlatButton(
                                  child: Text("OK"),
                                  onPressed: ()=> Navigator.of(context).pop()
                                  ),
                                  ],
                                  );
                                showDialog(context: context, builder: (BuildContext context){
                                  return info;
                                }
                              );
                            },
              
              child:  RaisedButton(
                color: Theme.of(context).primaryColorDark, 
                textColor: Theme.of(context).primaryColorLight,
                child:
              new Text('Save',
              textScaleFactor: 1.5, style: TextStyle(color: Colors.white)
                  ),
                ),
              ),
            ),
                        
          ]
         ),
        )
       );
       }
      }