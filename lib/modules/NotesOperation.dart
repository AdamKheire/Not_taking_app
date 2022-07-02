
import 'package:flutter/cupertino.dart';
import 'package:notetaking/modules/Note.dart';

class NotesOperation extends ChangeNotifier{
  List <Note> _notes = [];

  List<Note> get getNotes{
    return _notes;
  }
  NotesOperation(){
    addNote("First Note ", 'First Note Discription');
  }

void addNote(String title, String discription){
    Note note = Note(title, discription);
    _notes.add(note);
    notifyListeners();
}
}