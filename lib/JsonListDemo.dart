import 'dart:convert';

import 'package:cookbook/entity/note.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class JsonListViewer extends StatefulWidget {
  @override
  _JsonListViewerState createState() => _JsonListViewerState();
}

class _JsonListViewerState extends State<JsonListViewer> {
  List<Note> _notes = List<Note>();

  @override
  initState() {
    fetchNotes().then((value) {
      setState(() {
        _notes.addAll(value);
      });
    });

    super.initState();
  }

  Future<List<Note>> fetchNotes() async {
    var url = "https://my-json-server.typicode.com/ruudhaya/cookbook/todos";
    var response = await http.get(url);

    var notes = List<Note>();
    if (response.statusCode == 200) {
      var notesJson = json.decode(response.body);
      for (var noteJson in notesJson) {
        notes.add(Note.fromJson(noteJson));
      }
    }
    return notes;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Json List'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      _notes[index].title,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      _notes[index].text,
                      style: TextStyle(color: Colors.grey.shade700),
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: _notes.length,
        ));
  }
}
