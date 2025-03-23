import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/views/widgets/color_item_list_view.dart';

class EditeColorListView extends StatefulWidget {
  const EditeColorListView({super.key, required this.note});

  final NotesModel note;

  @override
  State<EditeColorListView> createState() => _EditeColorListViewState();
}

class _EditeColorListViewState extends State<EditeColorListView> {



 late int currentIndex ;

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal:7),
            child: GestureDetector(
              onTap: (){
                currentIndex = index;

                widget.note.color = kColors[index].value;
               
                setState(() {});
              },
              child: ColorItem(
                color: kColors[index],
                isActive: currentIndex == index,)),
          );
        },
      ),
    );
  }
}