import 'package:flutter/material.dart';
import 'package:notetaking/modules/NotesOperation.dart';
import 'package:provider/provider.dart';
import 'package:notetaking/screens/addscreen.dart';

class Addscreen extends StatelessWidget {
  Widget build(BuildContext context) {
   late String  titleText;
  late  String  discriptionText;

    return Scaffold(
      backgroundColor: Color(0xff003049),
      appBar: AppBar(
        title: Text("Notes Taking"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: ("Enter Title "),
                hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              onChanged: (value) {
                titleText = value;
              },
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: ("Enter Discription "),
                  hintStyle: TextStyle(fontSize: 18, color: Colors.white),
                ),
                style: TextStyle(fontSize: 18, color: Colors.white),
                onChanged: (value) {
                  discriptionText = value;
                },
              ),
            ),
            TextButton(
              onPressed: () {
                Provider.of<NotesOperation>(context, listen: false).addNote(titleText, discriptionText);
                Navigator.pop(context);
              },
              child: Text(
                "Add Note",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color:  Color(0xff003049),
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
