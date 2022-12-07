
import 'package:hive_flutter/hive_flutter.dart';
class ToDoDatabase{

  List toDoList =[];
  //reference the box
final _myBox =Hive.box('mybox');
//run if first time opening app
void createInitialData(){
  toDoList =[
    ["make Tutorial",false],
    ["Do Exercise",false],
  ];
}
//load data from database
void loadData(){
  toDoList = _myBox.get("TODOLIST");

}
//update database
void updateDataBase(){
  _myBox.put("TODOLIST",toDoList);
}
}