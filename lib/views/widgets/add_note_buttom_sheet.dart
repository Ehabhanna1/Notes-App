import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNotesButtomSheet extends StatelessWidget {
  const AddNotesButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {


  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode =AutovalidateMode.disabled;
  String? title, description;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height:40,),
        CustomTextField(
          onSaved: (value) {
            title = value;
            
          },
          hintText: 'Title',),
          const SizedBox(height: 40,),
          CustomTextField(
            onSaved: (value) {
              description = value;
            },
            hintText: 'Discription',maxLines: 7,),
         const SizedBox(height: 60,),
         CustomButton(
          onTap: (){
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();
             // Navigator.pop(context);
            }else{
              autovalidateMode = AutovalidateMode.always;
              setState(() {});
            }
          },
        ),
        const SizedBox(height: 30,),
        
        ],
      ),
    );
  }
}


