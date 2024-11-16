import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';

class NoteView extends StatefulWidget {
  const NoteView({super.key});

  @override
  State<NoteView> createState() => _NoteViewState();
}

class _NoteViewState extends State<NoteView> {
  List<String> notesList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff62FCD7),
        title: const Text(
          'Note App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              notesList.clear();
              setState(() {});
            },
            child: const Icon(
              Icons.delete,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
      floatingActionButton: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: Color(0xff62FCD7),
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
          
          return Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: NoteItem(),
          );
        }),
      ),
    );
  }
}
