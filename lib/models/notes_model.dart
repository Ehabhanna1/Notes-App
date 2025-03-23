import 'package:hive/hive.dart';

part 'notes_model.g.dart';

@HiveType(typeId: 0)
class NotesModel extends HiveObject {
  @HiveField(0)
  String title;

  @HiveField(1)
  String description;

  @HiveField(2)
  final String date;

  @HiveField(3)
   int color;
  
  NotesModel( {required this.title,required this.description,required this.date,required this.color});
}




/// flutter packages pub run build_runner build    