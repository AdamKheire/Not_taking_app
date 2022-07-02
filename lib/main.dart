
import 'package:flutter/material.dart';
import 'package:notetaking/modules/NotesOperation.dart';
import 'package:notetaking/screens/homescreen.dart';
import 'package:provider/provider.dart';
void main() =>runApp(Note());


class Note extends StatelessWidget {
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NotesOperation>(
      create: (context)=>NotesOperation(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
