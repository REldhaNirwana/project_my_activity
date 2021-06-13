
import 'package:flutter/material.dart';


class TambahActivity extends StatefulWidget {
  
  @override
  ActivityState createState() => ActivityState();
}

class ActivityState extends State<TambahActivity>{
  
 TextEditingController activityController = TextEditingController();
 TextEditingController hariController = TextEditingController();
 TextEditingController waktuController = TextEditingController(); 
 TextEditingController catatanController = TextEditingController(); 

 void hasil_inputan() {
    AlertDialog alertDialog = AlertDialog(
      title: Text('Your Activity'),
      content: Container(
        padding: EdgeInsets.all(5.0),
        alignment: Alignment.center,
        color: Colors.grey,
        height: 200,
        child: Column(
          children: [
            Text("Aktivitas : ${activityController.text}"),
            Text("Hari : ${hariController.text}"),
            Text("Waktu : ${hariController.text}"),
            Text("Catatan : ${catatanController.text}"),

            OutlinedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('OK', style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
    );
    showDialog(builder: (context) => alertDialog, context: context);
  }

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
                      controller: activityController,
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
                      controller: hariController,
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
                      controller: waktuController,
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
                      controller: catatanController,
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
                    child:  ElevatedButton(
                      child:
                    Text('Save',textScaleFactor: 1.5, style: TextStyle(color: Colors.white)),
                        onPressed: () { 
                          hasil_inputan();
                        }
                ),
              ),
            
                        
          ]
         ),
        )
       );
       }
      }
  