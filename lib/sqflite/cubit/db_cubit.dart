import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdsc/sqflite/cubit/db_states.dart';
import 'package:sqflite/sqflite.dart';

class ToDoCubit extends Cubit<ToDoStates> {
  ToDoCubit() : super(InitialState());

  /// create DB and tables

  late Database database;

  void createDB() async {
    try {
      database = await openDatabase(
        'todo.db',
        version: 1,
        onCreate: (database, version) {
          database.execute(
            'create table tasks (id INTEGER PRIMARY KEY, title TEXT, time INTEGER, num REAL)',
          );
        },
      );
    } catch (e) {
      print(e.toString());
    }
  }

  // insert
  void insertDB({
    required String title,
    required int time,
  }) async {
    emit(InsertLoadingState());
    await database.rawInsert(
      'insert into tasks (title, time) VALUES("$title", $time)',
    ).then((value) {
      print("id $value created");
      emit(InsertSuccessState());
    }).catchError((e) {
      print(e.toString());
      emit(InsertErrorState());
    });
  }

  // update
  void updateDB({
    required String title,
    required int time,
    required int id,
  }) async {
    await database.rawUpdate(
      'UPDATE tasks SET title = ?, time = ? WHERE id = ?',
      [title, time, id],
    ).then((value) {
      print("id $value created");
    }).catchError((e) {
      print(e.toString());
    });
  }

  // delete
  void deleteDB({
    required int id,
  }) async {
    await database.rawDelete(
      'delete from tasks where id=?',
      [id],
    );
  }

  // get
  void getAllFromDB() async {
    await database.rawQuery(
      'SELECT * FROM tasks',
    ).then((value) {
      // value is__ List<Map<String, dynamic>>
      print(value[2]['title']);

      List<TaskModel> allTask = value.map((task) => TaskModel.fromJson(task)).toList();
      print(allTask[2].title);
    });
  }
}

// {id: 3, title: dart, time: 2, num: null}

class TaskModel {
  late int id;
  late String title;
  late int time;

  // named constructor
  TaskModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    time = json['time'];
    title = json['title'];
  }
}
