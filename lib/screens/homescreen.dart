import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notetaking/modules/Note.dart';
import 'package:notetaking/modules/NotesOperation.dart';
import 'package:provider/provider.dart';

import 'addscreen.dart';

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xff003049),
      appBar: AppBar(
        title: Text("Notes Taking"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Consumer(builder: (context, NotesOperation data, child) {
        return ListView.builder(
          itemCount: data.getNotes.length,
          itemBuilder: (contex, index) {
            return NotesCard(data.getNotes[index]);
          },
        );
      }),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=> Addscreen()));
        },
        child: Icon(Icons.add,size: 30,color:  Color(0xff003049)),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class NotesCard extends StatelessWidget {
  final Note note;
  NotesCard(this.note);
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            note.title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(note.discription, style: TextStyle(fontSize: 17))
        ],
      ),
    );
  }
}
