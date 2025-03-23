import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/logic/notes/cubit/notes_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/views/edite_notes_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NotesModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return  EditeNotesView(note: note,);
        }));
      } ,
      child: Container(
        padding: const EdgeInsets.only(top: 20,bottom: 20,left: 16),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
      
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(note.title,style: const TextStyle(color: Colors.black,fontSize: 26),),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(note.description,style: const TextStyle(color: Colors.black45,fontSize: 18),),
              ),
              trailing: IconButton(
                onPressed: (){
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();

              },
              
               icon: const Icon(Icons.delete,color: Colors.black,size: 30,),
             ),
              ),
      
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(note.date,
                           
                // ignore: deprecated_member_use
                style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 16),),
              )
          ],
        ),
      ),
    );
  }
}
