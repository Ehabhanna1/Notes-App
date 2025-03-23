import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20,bottom: 20,left: 16),
      decoration: BoxDecoration(
        color: Color(0xFFffcc80),
        borderRadius: BorderRadius.circular(16),

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text("Flutter tips",style: TextStyle(color: Colors.black,fontSize: 26),),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text("Number of notes, build an app",style: TextStyle(color: Colors.black45,fontSize: 18),),
            ),
            trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.delete,color: Colors.black,size: 30,),
           ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text("Mar24,2025",
                         
              // ignore: deprecated_member_use
              style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 16),),
            )
        ],
      ),
    );
  }
}
